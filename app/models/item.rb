class Item < ApplicationRecord
    # attr_accessor :remove_picture
    # after_save :purge_picture, if: :remove_picture
    # private def purge_picture
    #     picture.purge_later
    # end



    has_one_attached :picture
    has_many_attached :uploads
end
