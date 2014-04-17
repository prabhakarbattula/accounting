class Credit < ActiveRecord::Base
	has_many :cashbooks
end
