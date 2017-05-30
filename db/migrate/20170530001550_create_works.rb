class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :company
      t.string :name
      t.date :start
      t.date :end
      t.text :description

      t.timestamps
    end
  end
end
