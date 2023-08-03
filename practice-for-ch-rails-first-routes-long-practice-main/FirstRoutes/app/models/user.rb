class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    has_many :artwork_shares,
        primary_key: :id, 
        foreign_key: :viewer_id,
        class_name: :ArtworkShare

    has_many :shared_artworks,
        through: :artwork_shares,
        source: :artwork



end