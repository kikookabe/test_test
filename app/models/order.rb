class Order < ApplicationRecord
    has_many :order_foods
    belongs_to :address
    belongs_to :customer

    has_many :foods

end
