class Membership < ApplicationRecord
    belongs_to :gym
    belongs_to :client

    # validations
    validates :charge, presence: true
    validates :client_id, presence: true
    validates :gym_id, presence: true

    validates :client_id, uniqueness: { scope: :gym_id }
    

end