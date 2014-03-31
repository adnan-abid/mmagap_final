class CreatePaypalGateways < ActiveRecord::Migration
  def change
    create_table :paypal_gateways do |t|
      t.string :business_merchant_id
      t.string :environment_mode
      t.string :api_username
      t.string :api_password
      t.string :api_signature
      t.string :api_environment

      t.timestamps
    end
  end
end
