class Admin::ArticlesController < Admin::AdminController
	def new
		@article = Article.new
	end

	def create
		(
		@article = Article.create params[:article]) rescue binding.pry
		respond_with :admin, @article, :location => root_path
	end
end
