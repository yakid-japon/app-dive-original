class CommentsController < ApplicationController
    def create
      if user_signed_in?
          @comment = Comment.new(comment_params)
          if @comment.save
            redirect_to "/historique", notice: "Comment was successfully created."
          else
            redirect_to "/historique"
          end
      end
    end

private

    def comment_params
        params.require(:comment).permit(:user_id, :prestation_id, :opinion)
    end
end
