class ProductsController < ApplicationController
  def index

  	@products= Product.all.paginate(:page => params[:page], :per_page => 2)
  	@cate1= Product.where(category_id: 1).order('id DESC')
  	@cate2= Product.where(category_id: 2).order('id DESC')
  	@cate3= Product.where(category_id: 3).order('id DESC')
  	@ss = Product.where(category_id: 1).offset(2).all.limit(3).order('id DESC')
  end
  def details
  	@products = Product.find(params[:id])
  end

  def search
    if params[:search].present?
      @products = Product.search(params[:search], page: params[:page], per_page: 2)

    else
      @products = Product.all
    end
  end
  
 end