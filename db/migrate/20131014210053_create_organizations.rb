class CreateOrganizations < ActiveRecord::Migration
  def self.up
    create_table :organizations do |t|
      t.string :name
      t.string :address
      t.string :url
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :organizations
  end
end
