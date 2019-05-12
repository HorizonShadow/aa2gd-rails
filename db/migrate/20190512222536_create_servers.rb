class CreateServers < ActiveRecord::Migration[6.0]
  def change
    create_table :servers do |t|
      t.string :ext_id
      t.string :name
      t.string :icon
      t.boolean :owner

      t.timestamps
    end
  end
end
