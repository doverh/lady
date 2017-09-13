class CreateInsights < ActiveRecord::Migration[5.1]
  def change
    create_table :insights do |t|
      t.string :title
      t.text :description
      t.string :picture
      t.string :theme_id
      t.string :user_id

      t.timestamps
    end
  end
end
