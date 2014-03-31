class PaypalGateway < ActiveRecord::Base
  attr_accessible :api_environment, :api_password, :api_signature, :api_username, :business_merchant_id, :environment_mode
end
