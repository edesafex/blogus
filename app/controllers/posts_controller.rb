class PostsController < ApplicationController
	def index
	end
	def new
		@Post = Post_new
	end
	def create
		@Post = Post_new(Post_params)
  	if @Post.save
  		redirect_to @Post
  	else
  		render 'new'
	end
	def show
		@Post = Post_find(params[find])

	end
	private
  		def post_params
  	params.require[Post].permit(:title,:body)
  		end
end
