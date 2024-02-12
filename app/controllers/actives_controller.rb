class ActivesController < ApplicationController
	include ActivesHelper

  def index
    @actives = Active.all
  end

	def show
		@active = Active.find(params[:id])
	end

	def new 
		@active = Active.new
	end

	def create
		@active = Active.new(active_params)
		@active.title = params[:active][:title]
		@active.save
		flash.notice ="Active  '#{@active.title}' Created!"
		redirect_to active_path(@active)
	end

	def destroy
		@active = Active.find(params[:id])
		@active.destroy

		redirect_to root_path, status: :see_other
	end

	def edit
		@active = Active.find(params[:id])
	end

	def update
		@active = Active.find(params[:id])
		@active.update(active_params)
		flash.notice ="Active  '#{@active.title}' Updated!"
		redirect_to active_path(@active)
	end

  def comment
	  @comment = Comment.new
    @comment.active_id = @active.id
	end


	def active_params
		params.require(:active).permit(:title, :body, :tag_list, :photo)
	end
end
