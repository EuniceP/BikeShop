class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :name
      t.fixnum :year
      t.text :description

      t.timestamps null: false
    end
  end
end
