class AddCompanyToPassage < ActiveRecord::Migration
  def change
    add_reference :passages, :company, index: true, foreign_key: true
  end
end
