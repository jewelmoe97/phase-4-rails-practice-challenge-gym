class Client < ApplicationRecord
has_many :gyms, through: :memberships

has_many :memberships

end
