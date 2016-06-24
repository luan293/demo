class ProductsController < ApplicationController
  def index

  	@products= Product.all.paginate(:page => params[:page], :per_page => 2)
  	@cate1= Product.where(category_id: 1).order('id DESC')
  	@cate2= Product.where(category_id: 2).order('id DESC')
  	@cate3= Product.where(category_id: 3).order('id DESC')
  	
    @ss = Product.where(category_id: 1).offset(2).all.limit(3).order('id DESC')
    @feature = Product.where(feature_id: 4).offset(0).all.limit(3).order('id DESC')
    
  end
  
  def details
    @a=1

      
  	@products = Product.find(params[:id])
     
      count =  @products.views_count
    count += 1
    @products.update_columns(views_count: count)
    @arrtag = @products.arr_tag.to_s
    @arrtag=@arrtag.split(',')
    
  end

  def search
   if params[:search].present?
      @products = Product.search(params[:search], page: params[:page], per_page: 2)

   else
     
    end
  end
  def tag
   if params[:tag].present?
      @products = Product.search(params[:tag], page: params[:tag], per_page: 2)
   else
    
    end
  end
  
 end