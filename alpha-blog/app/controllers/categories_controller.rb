# class CategoriesController < ApplicationController

#   def index
#     @categories = Category.all
#   end

#   def new
#     @category = Category.new
#   end

#   def create
#     @category = Category.new(category_params)
#     if @category.save
#       flash[:success] = "Categories created succesfully"
#       redirect_to categories_path
#     else
#       render 'new'
#     end
#   end

#   def show

#   end

#   private
#   def category_params
#     params.require(:category).permit(:name)
#   end

# end

class CategoriesController < ApplicationController

  before_action :require_admin, except: [:index, :show]  

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "Category was successfully created"
      redirect_to categories_path
    else
      render 'new'
    end
  end

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @category_articles = @category.articles
  end
  
  private

  def category_params
    params.require(:category).permit(:name)
  end

  def require_admin
    if !logged_in? || (logged_in? and !current_user.admin?)
      flash[:danger] = "Only admin can perform those action"
      redirect_to categories_path
    end
  end
end