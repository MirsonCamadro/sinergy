class BillingsController < ApplicationController

    def pre_pay
        orders = current_user.orders.cart
        total = orders.pluck("price").sum()
        items = orders.to_paypal_items
        payment = Billing.init_payment(items, total)
        
        if payment.create
            redirect_url = payment.links.find{|v| v.method == "REDIRECT"}.href
            redirect_to redirect_url
        else
            render json: payment.error
        end
    end

    def execute
        if Billing.execute_payment(current_user, params[:paymentId], params[:PayerID])
        redirect_to root_path, notice: "La compra se realizó con éxito!"
        else
        render plain: "No se puedo generar el cobro en PayPal."
        end
    end

end
