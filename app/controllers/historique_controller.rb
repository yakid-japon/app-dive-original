class HistoriqueController < ApplicationController
  def index
    @payments = Payment.where(user_id: current_user.id).all

    @comment = Comment.new
  end
end
