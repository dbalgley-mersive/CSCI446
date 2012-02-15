class CombineItemsInCart < ActiveRecord::Migration
  def up
  	#replaces multiple items for a single product in a cart with a single item
  	Cart.all.each do |cart|
  		#counts the number of each product in the cart
  		sums = cart.line_items.group(:product_id).sum(:quantity)

  		sums.each do |product_id, quantity|
  			if quantity > 1
  				#removes indiv. items
  				cart.line_items.where(product_id: product_id).delete_all

  				#replace with single item
  				cart.line_items.create(product_id: product_id, quantity: quantity)
  			end
  		end
  	end
  end

  def down
  	#splits items with quant. > 1 into multiple items
  	LineItem.where("quantit>1").each do |line_items|
  		#add indiv. items
  		line_items.quantity.times do
  			LineItem.create cart_id: line_item.cart_id, product_id: line_item.product_id, quantity: 1
  		end

  		#remove orig. item
  		line_item.destroy
  	end
  end
end
