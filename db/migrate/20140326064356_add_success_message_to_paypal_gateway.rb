class AddSuccessMessageToPaypalGateway < ActiveRecord::Migration
  def change
    add_column :paypal_gateways, :success_message, :text
  end
end
