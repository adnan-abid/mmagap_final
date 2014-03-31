ActiveAdmin.register Subscription do
  
  
  filter :label => "Change me"
  filter :plan_id,  :as => :select, :collection => Plan.order(:name)
  filter :user_id, :as => :select, :collection => User.order(:username)
  filter :email
  filter :created_at
  filter :updated_at
  
  
  index do
    id_column
    column :plan_id
    column "Plan"  do |plan|
      ap = Plan.find(plan.plan_id)
      link_to ap.name, admin_plan_path(plan.plan_id)
     
    end
    column "User"  do |user|
      cp = User.find(user.user_id)
      link_to cp.username, admin_user_path(user.user_id)
     
    end
    
    column :email
    column :stripe_customer_token
    column :paypal_customer_token
    column :paypal_recurring_profile_token
    column :created_at
    column :updated_at
    default_actions
  end
end


