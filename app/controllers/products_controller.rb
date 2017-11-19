class ProductsController < ApplicationController
  def index
    @product_recent = Product.recent
    @product_most_reviews = Product.most_reviews
    @products = Product.index(params[:page])
    @products = @products.only_names(params[:name]) if params[:name].present?
    @products = @products.search(params[:search]) if params[:search].present?
    @products = @products.by_origin(params[:origin]) if params[:origin].present?
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def reviews
    @reviews = Review.includes(:products).all
  end


  private
    def product_params
      params.require(:product).permit(:name, :cost, :origin)
    end
end
