class CompaniesController < ApplicationController
	def index
		    @companies = Companies.all

		    respond_to do |format|
		      format.html # index.html.erb
		      format.xml  { render :xml => @users }
		    end
		  end


		  def show
		    @company = Company.find(params[:id])

		    respond_to do |format|
		      format.html # show.html.erb
		      format.xml  { render :xml => @user }
		    end
		  end
		 end

		def create
		@company = current_company.company.build
		
		if @company.save
			redirect_to @company 
      tags = @company.skills.scan( SimpleHashtag::Hashtag::HASHTAG_REGEX )
      @company.update_attribute(:tag_list, tags)
		else
			render 'new'
		end
	end

	def show
		@company = Company.find(params[:id])
	end

	def edit
		@company = Company.find(params[:id])
	end

	def update
		@company = Company.find(params[:id])

		end
	

end
