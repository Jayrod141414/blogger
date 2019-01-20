class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
        @comment.article_id = params[:article_id]
        @comment.save                               #saves the information to the database
        flash.notice = "Comment Created!"
        redirect_to article_path(@comment.article)          #redirects to the article page 
    end

    def comment_params
        params.require(:comment).permit(:author_name, :body)
    end      
end
