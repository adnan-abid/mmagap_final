class CreateSubscriptionPackages < ActiveRecord::Migration
  def change
    create_table :subscription_packages do |t|
      t.string :title
      t.string :slug
      t.float :price
      t.text :short_desc
      t.text :description
      t.string :package_image
      t.integer :is_active

      t.timestamps
    end
  end
end
