class CreateTimeTableTimeValues < ActiveRecord::Migration[6.0]
  def change
    create_table :time_table_time_values do |t|
      t.references :time_table, null: false, foreign_key: true
      t.references :time_value, null: false, foreign_key: true

      t.timestamps
    end
  end
end
