class Item < ApplicationRecord
    has_one_attached :picture
    has_many_attached :uploads
end
