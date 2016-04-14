class NewRecipesController < ApplicationController
	def new
		@recipe = NewRecipe.new
	end

	def create
		binding.pry

		@recipe = NewRecipe.new(recipe_params)

		UserMailer.send_recipe(@recipe, current_user).deliver	
		if @recipe.save
			redirect_to "/" , notice: "Your mail has been sent"
		else
			render "/new_recipes/new"
		end
	end

	def recipe_params
		params.require(:new_recipe).permit(:title , :description)
	end
end
