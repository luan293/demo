ActiveAdmin.register Product do
  # Strong parameters trong Rails
  # cho phép Rails controllers nhận giá trị truyền từ views
  # Cho các thuộc tính được khai báo dưới đây
  permit_params :image, :name, :description, :price, :year, :category_id, :feature_id, :arr_tag
  index do
    selectable_column
    id_column
    column :name
    column "image", :sortable => false do |md|
      "<img src='#{md.image.url}' alt='md image' style='height:48px; display: block;'".html_safe
    end
    column :description
    column :price
    column :year
    column :category_id
    column :feature_id
    column :arr_tag
    actions
  end

  # Cho phép admin search theo các thuộc tính này tại trang index
  filter :name
  filter :price

  # Các thuộc tính sẽ được hiển thị để Admin nhập giá trị
  form html:  { multipart: true } do |f|
    f.inputs "Product Details" do
      f.input :name
      #f.input :image
      f.file_field :image

      f.input :description, :as => :ckeditor
      f.input :price
      f.input :year
      f.input :arr_tag
     f.collection_select :category_id, Category.all,:id ,:name, {promt: "choose a category"}
      #f.input :feature, as: :check_boxes
     # f.check_box_tag 'remember', '', false, :class => 'checkbox'
     f.collection_select :feature_id, Feature.all, :id, :ft

    end
    f.actions
  end
end