class AddPaypalUrlMessageToPaypalGateway < ActiveRecord::Migration
  def change
    add_column :paypal_gateways, :paypal_url, :string
  end
end
