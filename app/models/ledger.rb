class Ledger < ActiveRecord::Base
	has_many :cashbooks
end
