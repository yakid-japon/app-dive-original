class CommentsController < ApplicationController
    def create
          @comment = Comment.new(comment_params)
          if @comment.save
            redirect_to "/historique"
          else
            redirect_to "/historique"
          end
    end

private

    def comment_params
        params.require(:comment).permit(:user_id, :prestation_id, :opinion)
    end
end