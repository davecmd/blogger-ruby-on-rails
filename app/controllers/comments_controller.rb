class CommentsController < ApplicationController
def create 
    @comment = Comment.new(comment_parms)
    @comment.article_id = params[:article_id]

    @comment.save
    redirect_to article_path(@comment.article)
end

def comment_parms
    params.require(:comment).permit(:author_name, :body)
    
end

end
