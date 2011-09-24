# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Category.find_or_create_by_name('Projects')
Category.find_or_create_by_name('People')
Category.find_or_create_by_name('Jack')
Category.find_or_create_by_name('Jill')
Category.find_or_create_by_name('John')
Category.find_or_create_by_name('Jane')
Category.find_or_create_by_name('Services')
Category.find_or_create_by_name('Building')
Category.find_or_create_by_name('Cleaning')
Category.find_or_create_by_name('Awards')
Category.find_or_create_by_name('2007')
Category.find_or_create_by_name('2008')
Category.find_or_create_by_name('2009')
Category.find_or_create_by_name('2010')
Category.find_or_create_by_name('2011')
Category.find_or_create_by_name('Cars')
Category.find_or_create_by_name('Houses')
Category.find_or_create_by_name('Interior')
