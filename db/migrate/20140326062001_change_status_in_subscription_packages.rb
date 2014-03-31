class ChangeStatusInSubscriptionPackages < ActiveRecord::Migration
  def up
    change_column :subscription_packages, :is_active, 'boolean USING CAST(is_active AS boolean)'
  end

  def down
    change_column :subscription_packages, :is_active, :integer
  end
end
