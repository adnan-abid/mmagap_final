class AddFailureMessageToPaypalGateway < ActiveRecord::Migration
  def change
    add_column :paypal_gateways, :failure_message, :text
  end
end
