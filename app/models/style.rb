class Style < ActiveRecord::Base
  has_many :mix_styles
  has_many :mixes, through: :mix_styles
end
