class CreateTexts < ActiveRecord::Migration[7.0]
  def change
    create_table :texts do |t|
      t.text :input

      t.timestamps
    end
  end
end
