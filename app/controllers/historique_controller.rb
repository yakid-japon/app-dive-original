class HistoriqueController < ApplicationController
  def index
    if user_signed_in?
      @payments = Payment.where(user_id: current_user.id).all

      @comment = Comment.new
    end
  end
end
