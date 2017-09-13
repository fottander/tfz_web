class CreateRiders < ActiveRecord::Migration[5.1]
  def change
    create_table :riders do |t|
      t.string :name
      t.string :ytlink
      t.string :vimeolink

      t.timestamps
    end
  end
end
