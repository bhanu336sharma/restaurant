class ItemsController < ApplicationController
	before_action :index , only: ['index', 'show_all', 'order']
	before_action :show, only: ['show', 'edit', 'update', 'add_to_cart', 'destroy']

	def new
		@item = Item.new 

	end

	def create
		@item = Item.create(item_params)
		if @item.save
   			redirect_to "/"
 		else 
 			render 'new'
 	    end
	end

	def index
		@food = Item.all 
	end

	def show
		@item= Item.find(params[:id])
	end

	def update
	    if @item.update(item_params)
	       redirect_to "/"
	    end
	end

	def add_to_cart
		@item.update!(item_params)
		render :json => {status: "ok"}
	end

	def destroy
		@item.destroy
		redirect_to '/show_all'
	end
	
	def item_params  
		params.require(:item).permit(:name, :price, :category, :photo)
	end	
end