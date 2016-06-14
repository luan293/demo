ActiveAdmin.register Category do
  # Strong parameters trong Rails
  # cho phép Rails controllers nhận giá trị truyền từ views
  # Cho các thuộc tính được khai báo dưới đây
  permit_params :name

  index do
    selectable_column
    id_column
    column :name
    actions
  end

  # Cho phép admin search theo các thuộc tính này tại trang index
  filter :name
  

  # Các thuộc tính sẽ được hiển thị để Admin nhập giá trị
  form do |f|
    f.inputs "Category Details" do
      f.input :name 
    end
    f.actions
  end

end