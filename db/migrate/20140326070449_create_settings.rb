class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :admin_name
      t.string :admin_email
      t.string :smtp_address
      t.string :smpt_host
      t.integer :smpt_port
      t.string :enable_starttls_auto
      t.integer :smpt_status
      t.string :smpt_username
      t.string :smpt_password
      t.string :authentication
      t.string :domain

      t.timestamps
    end
  end
end
