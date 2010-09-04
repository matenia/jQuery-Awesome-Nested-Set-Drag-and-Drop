class Category < ActiveRecord::Base
  attr_accessible :name, :description, :parent_id, :lft, :rgt
  acts_as_nested_set
end
