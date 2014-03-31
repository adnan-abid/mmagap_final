class PaypalGateway < ActiveRecord::Base
  
  attr_accessible :id, :business_merchant_id, :environment_mode, :api_username,  :api_password,  :api_signature,  :api_environment,  :success_message, :failure_message, :paypal_url
 
  
end
