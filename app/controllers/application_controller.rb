class ApplicationController < ActionController::Base
    def show
        @article = Article.find(params[:id])
        @comment = Comment.new
        @comment.article_id = @article_id
    end
end
