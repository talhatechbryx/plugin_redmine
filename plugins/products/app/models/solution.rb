class Solution < ActiveRecord::Base
  unloadable
  belongs_to :project
  belongs_to :product
  
end
