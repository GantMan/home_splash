class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :quip

      t.timestamps null: false
    end
  end
end
