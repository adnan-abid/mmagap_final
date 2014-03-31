class AddSubscriptionsTimeToSetting < ActiveRecord::Migration
  def change
    add_column :settings, :subscriptions_time, :string
  end
end
