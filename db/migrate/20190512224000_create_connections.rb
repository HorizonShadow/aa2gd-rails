class CreateConnections < ActiveRecord::Migration[6.0]
  def change
    create_table :connections do |t|
      t.string :ext_id
      t.string :name
      t.string :type
      t.boolean :revoked
      t.integer :visibility
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
