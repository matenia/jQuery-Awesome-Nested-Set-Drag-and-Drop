# encoding: utf-8
require 'awesome_nested_set'
require 'rails'

module CollectiveIdea
  module Acts
    module NestedSet
      class Railtie < ::Rails::Railtie
        config.before_initialize do
          ActiveSupport.on_load :active_record do
            ActiveRecord::Base.send(:include, CollectiveIdea::Acts::NestedSet::Base)
          end

          ActiveSupport.on_load :action_view do
            ActionView::Base.send(:include, CollectiveIdea::Acts::NestedSet::Helper)
          end
        end
      end
    end
  end
end
