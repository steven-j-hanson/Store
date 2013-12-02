class CategoryController < InheritedResources::Base
  def category_search
    @products = Product.where("Category_id AS " + params[:id])
  end
end
