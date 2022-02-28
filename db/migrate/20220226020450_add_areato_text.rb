class AddAreatoText < ActiveRecord::Migration[7.0]
  def change
    add_column :texts, :area, :text
  end
end
