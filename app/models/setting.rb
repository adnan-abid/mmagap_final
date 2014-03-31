class Setting < ActiveRecord::Base
  
  attr_accessible :admin_email, :admin_name, :authentication, :domain, :enable_starttls_auto, :smpt_host, :smpt_password, :smpt_port, :smpt_status, :smpt_username, :smtp_address, :subscriptions_price, :subscriptions_time
  
end
