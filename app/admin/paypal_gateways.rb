ActiveAdmin.register PaypalGateway do
  
  
  filter :label => "Change me"
  filter :business_merchant_id
  filter :environment_mode, :as => :select, :collection => { 'Live' => 'live', 'Sendbox' => 'sendbox', 'beta-sandbox'=>'beta-sandbox'}
  filter :api_username
  filter :created_at
  filter :updated_at
 
  
  index do
    id_column
    column :environment_mode
    column :business_merchant_id
    column :success_message
    column :failure_message
   
    column :api_username
    column :api_password
    #column :api_signature
    #column :api_environment
   
    
  
    actions :all, except: [:edit, :destroy] #just show
  end
  
  
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs 'Paypal Payment Pro', :multipart => true do
      
      f.input :environment_mode, :as => :select, :collection => { 'Live' => 'live', 'Sendbox' => 'sendbox', 'beta-sandbox'=>'beta-sandbox'}
      
      f.input :paypal_url
      f.input :business_merchant_id
      #f.input :success_message, :label=>true, :input_html => { :class => "ckeditor", :id => "success_message"}
      #f.input :failure_message, :label=>true, :input_html => { :class => "ckeditor", :id => "failure_message"}
      
      f.input :success_message, :label=>true, :input_html => { :class => 'autogrow', :rows => 5, :cols => 20, :id => "success_message"}
      f.input :failure_message, :label=>true, :input_html => { :class => "autogrow", :rows => 5, :cols => 20, :id => "failure_message"}
      
      
      f.input :api_username
      f.input :api_password,:as => :string
      f.input :api_signature
      f.input :api_environment

     
    end
    f.buttons
  end
  
end
