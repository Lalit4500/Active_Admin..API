class CreateActiveAdminPermissions < ActiveRecord::Migration[6.1]
  def change
    create_table :active_admin_permissions do |t|
      t.integer :managed_resource_id
      t.integer :role
      t.integer :state

      t.timestamps
    end
    add_index :active_admin_permissions, [:managed_resource_id, :role], unique: true, name: "active_admin_permissions_index"
  end
end
