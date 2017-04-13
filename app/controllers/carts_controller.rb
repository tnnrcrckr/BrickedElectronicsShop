class CartsController < ApplicationController
    #Flashes won't work since these actions are POST actions
    
    def add
        user_cart = User.find(params[:u_id]).cart
        product = Product.find(params[:p_id])
        
        LineItem.create!(product_id: product.id, cart_id: user_cart.id)
        #flash[:warning] = "Item added to cart."
        redirect_back(fallback_location: store_location)
    end
    
    def remove
        LineItem.find(params[:id]).destroy
        #flash[:warning] = "Item removed from cart."
        redirect_back(fallback_location: store_location)
    end
    
    def empty
        cart = Cart.find(params[:id])
        
        unless cart.empty?
            cart.line_items.each do |line|
               line.destroy 
            end
        #flash[:warning] = "All items removed from cart."
        end
        redirect_back(fallback_location: store_location)
    end
    
    private
        def cart_params
          params.require(:cart).permit(:user_id)
        end
end
