plugin_test_dir = File.dirname(__FILE__)

$:.unshift(plugin_test_dir + '/../lib')

require 'rubygems'
require 'test/unit'
require 'active_support'
require 'active_support/test_case'
require 'active_record'
require 'action_pack'
require 'awesome_nested_set'

CollectiveIdea::Acts::NestedSet::Railtie.extend_active_record

ActiveRecord::Base.logger = Logger.new(plugin_test_dir + "/debug.log")

ActiveRecord::Base.configurations = YAML::load(IO.read(plugin_test_dir + "/db/database.yml"))
ActiveRecord::Base.establish_connection(ENV["DB"] || "sqlite3mem")
ActiveRecord::Migration.verbose = false
load(File.join(plugin_test_dir, "db", "schema.rb"))

Dir["#{plugin_test_dir}/fixtures/*.rb"].each {|file| require file }

class ActiveSupport::TestCase #:nodoc:
  include ActiveRecord::TestFixtures

  self.fixture_path = File.dirname(__FILE__) + "/fixtures/"
  self.use_transactional_fixtures = true
  self.use_instantiated_fixtures  = false

  fixtures :categories, :notes, :departments
end
