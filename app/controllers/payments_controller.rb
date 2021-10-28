class PaymentsController < ApplicationController
    def create

        if user_signed_in?
          @payment = Payment.new(payment_params)
          if @payment.save
           
          else
           
          end
        end
    end

private

    def payment_params
        params.require(:payment).permit(:user_id, :prestation_id)
    end
end
