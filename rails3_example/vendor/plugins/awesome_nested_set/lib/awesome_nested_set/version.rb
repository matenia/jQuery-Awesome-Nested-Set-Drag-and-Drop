module CollectiveIdea
  module Acts
    module NestedSet
      module Version
        MAJOR = 1
        MINOR = 5
        RELEASE = 0

        def self.dup
          "#{MAJOR}.#{MINOR}.#{RELEASE}"
        end
      end
    end
  end
end
