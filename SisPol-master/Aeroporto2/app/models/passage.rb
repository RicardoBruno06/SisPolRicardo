class Passage < ActiveRecord::Base
	belongs_to :client
	belongs_to :company
	belongs_to :route
end
