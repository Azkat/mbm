class Mix < ActiveRecord::Base
  has_many :mix_styles
  has_many :styles, through: :mix_styles
end
