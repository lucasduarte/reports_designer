class CreateSimpleSqls < ActiveRecord::Migration
  def change
    create_table :simple_sqls do |t|
      t.integer :connection_id, null: false
      t.string  :description, limit: 70, null: false
      t.text    :sql
      t.integer :user_id, null: false
      t.timestamps null: false
    end

    add_foreign_key :simple_sqls, :connections
    add_foreign_key :simple_sqls, :users
  end
end
