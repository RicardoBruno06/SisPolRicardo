class CreatePassages < ActiveRecord::Migration
  def change
    create_table :passages do |t|
      t.string :font
      t.string :destiny

      t.timestamps null: false
    end
  end
end
