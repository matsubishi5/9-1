class CommentsController < ApplicationController
    def create
        @book = Book.find(params[:book_id])
        @comments = @book.comments
        @comment = Comment.new(comment_params)
        @comment.user_id = current_user.id
        @comment.book_id = @book.id
        @comment.save
    end

    def destroy
        @book = Book.find(params[:book_id])
        @comments = @book.comments
        @comment = @book.comments.find(params[:id])
        @comment.destroy
    end

    def comment_params
        params.require(:comment).permit(:body)
    end
end