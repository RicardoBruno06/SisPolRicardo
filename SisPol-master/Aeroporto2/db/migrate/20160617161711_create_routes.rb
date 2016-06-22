class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :hour
      t.string :price
      t.string :status

      t.timestamps null: false
    end
  end
end
