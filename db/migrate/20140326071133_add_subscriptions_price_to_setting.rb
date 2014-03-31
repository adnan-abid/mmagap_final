class AddSubscriptionsPriceToSetting < ActiveRecord::Migration
  def change
    add_column :settings, :subscriptions_price, :float
  end
end
