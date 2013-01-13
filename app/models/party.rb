class Party < ActiveRecord::Base
  attr_accessible :date, :title
  acts_as_voteable
end
