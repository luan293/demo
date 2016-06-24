ActiveAdmin.register Feature do
  # Strong parameters trong Rails
  # cho phép Rails controllers nhận giá trị truyền từ views
  # Cho các thuộc tính được khai báo dưới đây
  permit_params :ft

  index do
    selectable_column
    id_column
    column :ft
    actions
  end

  # Cho phép admin search theo các thuộc tính này tại trang index
  filter :ft
  

  # Các thuộc tính sẽ được hiển thị để Admin nhập giá trị
  form do |f|
    f.inputs "Feature Details" do
      f.input :ft 
    end
    f.actions
  end

end