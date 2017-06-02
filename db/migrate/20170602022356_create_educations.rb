class CreateEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :educations do |t|
      t.string :school
      t.string :degree
      t.string :major
      t.string :minor
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
