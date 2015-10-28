class UsersController < ApplicationController

	

		  def index
		 

			if params[:search]
      			@users = User.search(params[:search])
    		else
    		  @users = User.all
			    respond_to do |format|
			      format.html # index.html.erb
			      format.xml  { render :xml => @users }
		    end
		  end

		end

	

		  def show
		    @user = User.find(params[:id])


		    respond_to do |format|
		      format.html # show.html.erb
		      format.xml  { render :xml => @user }
		    end
		  end
		 end

		def create
		@user = current_user.user.build
		
		if @user.save
			redirect_to @user 
      tags = @user.skills.scan( SimpleHashtag::Hashtag::HASHTAG_REGEX )
      @user.update_attribute(:tag_list, tags)
      @user.resume = params[:user][:profile]

   


		else
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])

		end
	
