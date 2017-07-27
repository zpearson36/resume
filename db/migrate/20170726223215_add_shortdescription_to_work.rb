class AddShortdescriptionToWork < ActiveRecord::Migration[5.1]
  def change
    add_column :works, :short_descr, :text
  end
end
