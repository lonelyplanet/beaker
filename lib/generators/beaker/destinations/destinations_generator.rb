require "generators/base"

module Beaker
  module Generators
    class DestinationsGenerator < Base
      desc "Generate a destinations component"

      class_option :include_js, :type => :boolean, :default => true, :desc => "Generate a JS file"
      class_option :include_styles, :type => :boolean, :default => true, :desc => "Generate the styles"
      class_option :view_directory, :type => :string, :default => "gonzo", :desc => "The view output folder"

      def create_javascript
        template "main.js", "ui/components/#{file_name}/main.js" if options[:include_js]
      end

      def create_stylesheets
        template "_component.scss", "ui/components/#{file_name}/_#{file_name}.scss" if options[:include_styles]
      end

      def create_component
        template "_index.html.hbs", "app/templates/components/#{file_name}/_#{file_name}.html.hbs"
      end
    end
  end
end
