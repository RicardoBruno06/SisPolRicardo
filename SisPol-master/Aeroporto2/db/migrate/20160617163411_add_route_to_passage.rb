class AddRouteToPassage < ActiveRecord::Migration
  def change
    add_reference :passages, :route, index: true, foreign_key: true
  end
end
