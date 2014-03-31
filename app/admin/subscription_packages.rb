ActiveAdmin.register SubscriptionPackage do
  
  index do
    id_column
    column :title
    column :slug
    column :short_desc
    
    column "Image" do |package|
      link_to(image_tag(package.package_image, :height => '100'), admin_subscription_package_path(package))
    end
    column :is_active
    column :created_at
    column :updated_at
    default_actions
  end
  
  
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs 'New Subscription Package', :multipart => true do
      f.input :title
      f.input :slug
      f.input :price, :as => :string
      f.input :short_desc, :input_html =>{:class => "sort_desc", :class => 'autogrow', :rows => 5, :cols => 20}
      f.input :description, :label=>true, :input_html => { :class => "ckeditor", :id => "descripcion"}
      f.input :package_image, :as => "file", :hint => f.template.image_tag(f.object.package_image, :height=>'100')
      
      
     f.input :is_active
    end
    f.buttons
  end
  
  
end
