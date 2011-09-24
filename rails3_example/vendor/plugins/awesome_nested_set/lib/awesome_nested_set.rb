# encoding: utf-8
module CollectiveIdea
  module Acts
    module NestedSet
      autoload :Base,         'awesome_nested_set/base'
      autoload :Depth,        'awesome_nested_set/depth'
      autoload :Descendants,  'awesome_nested_set/descendants'
      autoload :Helper,       'awesome_nested_set/helper'
      autoload :Version,      'awesome_nested_set/version'
    end
  end
end

require 'awesome_nested_set/railtie'
