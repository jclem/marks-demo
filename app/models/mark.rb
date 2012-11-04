class Mark < ActiveRecord::Base
  validates :url, presence: true
end
