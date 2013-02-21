class Tracker < ActiveRecord::Base
  belongs_to :post
  attr_accessible :email, :name, :tspec
end
