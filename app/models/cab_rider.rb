class CabRider < ApplicationRecord
  belongs_to :cab
  belongs_to :rider
end
