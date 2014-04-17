class Cashbook < ActiveRecord::Base
	belongs_to :debit
	belongs_to :credit
end
