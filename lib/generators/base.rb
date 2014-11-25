require 'rails/generators/named_base'

module Beaker
  module Generators
    class Base < Rails::Generators::NamedBase
      def self.source_root
        File.expand_path(File.join(File.dirname(__FILE__), 'beaker', generator_name, 'templates'))
      end
    end
  end
end