class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :appid
      t.string :name
      t.integer :playtime_forever
      t.string :img_icon_url
      t.string :img_logo_url
      t.boolean :has_community_visible_stats

      t.timestamps
    end
  end
end
