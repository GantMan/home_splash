class CreateBackgrounds < ActiveRecord::Migration
  def change
    create_table :backgrounds do |t|
      t.references :user, index: true
      t.string :image_file

      t.timestamps null: false
    end
    add_foreign_key :backgrounds, :users
  end
end
