class Bear < ActiveRecord::Base
  validates :name, presence: true
  validates :species, presence: true
end
