ActiveAdmin.register Setting do
  
  
  filter :label => "Change me"
  filter :admin_name
  filter :admin_email
  filter :smtp_address
  filter :subscriptions_price
  
  #filter :created_at
  #filter :updated_at
 
  
  index do
    id_column
    column :admin_name
    column :admin_email
    column :smtp_address
    column :smpt_port
   
    column :subscriptions_price
    column :subscriptions_time
    #column :api_signature
    #column :api_environment
   
    
  
    default_actions
  end
  
  
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs 'Configuration', :multipart => true do
      
      
      f.input :admin_name
      f.input :admin_email
      f.input :smtp_address
      f.input :smpt_host
      f.input :smpt_port
      f.input :smpt_status
      f.input :smpt_username
      f.input :smpt_password,:as => :string
      f.input :enable_starttls_auto
      f.input :authentication
      f.input :domain
      f.input :subscriptions_price
      f.input :subscriptions_time
      

     
    end
    f.buttons
  end
  
end
