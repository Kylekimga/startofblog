class CommentsController < ApplicationController

    def create
        @comment = Comment.new
        @comment.user = params[:comment][:user]
        @comment.memo = params[:comment][:memo]
        @comment.lion_id = params[:lion_id]
        @comment.save
        
        redirect_to request.referrer
    end

end
