class PostsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
	def index
    if params[:hashtag]
      @posts = Post.tagged_with(params[:hashtag]).order('created_at DESC')
    else
      @posts = Post.all.order('created_at DESC')
    end
	end

	def new
		@post = current_user.posts.build
	end

	def create
		@post = current_user.posts.build(post_params)
		
		if @post.save
			redirect_to @post 
      tags = @post.body.scan( SimpleHashtag::Hashtag::HASHTAG_REGEX )
      @post.update_attribute(:tag_list, tags)
		else
			render 'new'
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])

		if @post.update(params[:post].permit(:title, :image, :body, :tag_list))
      tags = @post.body.scan(/\B#\w+/)
      @post.update_attribute(:tag_list, tags)
			redirect_to @post
		else
			render 'edit'
		end
	end


	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to root_path 
	end


	private

	def post_params
		params.require(:post).permit(:title, :image, :body, :tag_list)
	end
end
