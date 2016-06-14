ActiveAdmin.register Product do
  # Strong parameters trong Rails
  # cho phép Rails controllers nhận giá trị truyền từ views
  # Cho các thuộc tính được khai báo dưới đây
  permit_params :image, :name, :description, :price, :year#, :category_id, :feature

  index do
    selectable_column
    id_column
    column :name
    column :image
    column :description
    column :price
    column :year
    #column :category_id
    #column :feature
    actions
  end

  # Cho phép admin search theo các thuộc tính này tại trang index
  filter :name
  filter :price

  # Các thuộc tính sẽ được hiển thị để Admin nhập giá trị
  form do |f|
    f.inputs "Product Details" do
      f.input :name
      f.input :image
      f.input :description
      f.input :price
      f.input :year
     #f.collection_select :category_id, Category.all,:id ,:name, {promt: "choose a category"}
     # f.input :feature, as: :check_box_tag
     # f.check_box_tag 'remember', '', false, :class => 'checkbox'
    end
    f.actions
  end

end