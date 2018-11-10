class RecipesController < ApplicationController
    def index
        @recipes = Recipebook.all
    end
    
    def show
        @recipe = Recipebook.find(params[:id])
    end
    
    def new
    end
    
    def create
        @recipe = Recipebook.new(recipe_params)
        
        @recipe.save
        redirect_to action: "index" 
    end
end

private 
    def recipe_params
        params.require(:recipe).permit(:meal, :ingredients)
    end

