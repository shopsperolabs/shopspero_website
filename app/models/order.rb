class Order < ActiveRecord::Base
    has_many :ordered_items
    has_one:user
end
