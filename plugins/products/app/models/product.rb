class Product < ActiveRecord::Base
  unloadable

  belongs_to :project
  has_many :solutions, dependent: :destroy
end
