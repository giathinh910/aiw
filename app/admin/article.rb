ActiveAdmin.register Article do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  
  permit_params :title, :feature_image, :brief, :content

  index do
    column "Mã số", :id
    column "Tên", :title, :sortable => :id
    actions
  end

  form do |f|
    f.inputs "Chi tiết hành tinh" do
      f.input :title
      f.input :feature_image
      f.input :brief
      f.input :content, :as => :ckeditor
    end
    f.actions
  end

end
