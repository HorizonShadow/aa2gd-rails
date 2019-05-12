class CreateTimeValues < ActiveRecord::Migration[6.0]
  def change
    create_table :time_values do |t|
      t.integer :hour

      t.timestamps
    end
  end
end
