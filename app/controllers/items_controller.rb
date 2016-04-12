class ItemsController < ApplicationController
	before_action :show, only: ['update', 'add_to_cart', 'destroy']
	autocomplete :item, :name, :full => true

	def new
		@item = Item.new 
	end

	def create
		@item = Item.new(item_params)
		puts @item
		if @item.save!
   			redirect_to "/" , notice: "Item added successfully"
 		else 
 			render 'new'
 	    end
	end

	def index
		@food = Item.all 
	end

	def search
		@item = Item.find(params[:id])	
		render :json => {data: @item }	
	end

	def show
		@item= Item.find(params[:id])
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		@item = Item.find(params[:id])		
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
		redirect_to '/index'
	end
	
	def item_params  
		params.require(:item).permit(:name, :price, :category, :photo)
	end	
end