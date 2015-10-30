class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.string :name, limit: 50, null: false
      t.string :provider, limit: 20, null: false
      t.string :connection_string, limit: 1000, null: false
      t.integer :timeout, null: false
      t.timestamps null: false
    end
  end
end
