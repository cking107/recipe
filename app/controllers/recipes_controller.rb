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
    
    def edit
        @recipe = Recipebook.find(params[:id])
    end
    
    def update
        @recipe = Recipebook.find(params[:id])
        if @recipe.update(recipe_params)
            redirect_to action: "show"
        else
            render 'edit'
        end
    end
    
    def destroy
        @recipe = Recipebook.find(params[:id])
        @recipe.destroy
        
        redirect_to recipes_path
    end
end

private 
    def recipe_params
        params.require(:recipe).permit(:meal, :ingredients)
    end

