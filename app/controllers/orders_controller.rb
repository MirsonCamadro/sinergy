class OrdersController < ApplicationController
    before_action :authenticate_user!
    
  
    def create
      p = Fee.find(params[:fee_id])
      o = Order.find_or_create_by(user: current_user, fee: p, payed: false, price: p.value)
  
      if o.save
        respond_to do |format|
          format.js { flash.now[:notice] = "Tu cuota ha sido agregada al carro" }
        end
        
      else
        redirect_to fees_path, alert: "Tu cuota NO ha sido agregada al carro"
      end
    end
  
    def clean
      @orders = Order.where(user: current_user, payed: false)
      @orders.destroy_all
      redirect_to orders_path, notice: 'El carro se ha vaciado.'
    end
  
    def index
      @orders = current_user.orders.where(payed: false)
      @total = @orders.pluck("price").sum()
      @user = current_user
    end
  end