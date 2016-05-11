class ProductosController < ApplicationController
	#before_filter :find_product, only: [:show, :index]
	def index #to watch all the products
		@products = Product.where(the_best_of_week: true).paginate(page: params[:page], per_page: 12)
		#@products = @products.paginate(page: params[:page], per_page: 6) #беремо всі записи з бази
		#@posts = Product.paginate(:page => params[:page], :per_page => 30)
		#@posts = Product.order('created_at DESC').page(params[:page])
	end
end
