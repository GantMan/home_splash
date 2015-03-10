class CreateFocusItems < ActiveRecord::Migration
  def change
    create_table :focus_items do |t|
      t.references :user, index: true
      t.string :status

      t.timestamps null: false
    end
    add_foreign_key :focus_items, :users
  end
end
