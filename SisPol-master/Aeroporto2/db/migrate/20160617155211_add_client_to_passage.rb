class AddClientToPassage < ActiveRecord::Migration
  def change
    add_reference :passages, :client, index: true, foreign_key: true
  end
end
