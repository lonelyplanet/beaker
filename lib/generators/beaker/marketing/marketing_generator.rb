require "generators/base"

module Beaker
  module Generators
    class MarketingGenerator < Base
      desc "Generate marketing pages"

      class_option :include_js, :type => :boolean, :default => true, :desc => "Generate a JS file"
      class_option :include_styles, :type => :boolean, :default => true, :desc => "Generate the styles"
      class_option :view_directory, :type => :string, :default => "gonzo", :desc => "The view output folder"

      def copy_initializer_file
        template "page.html.haml", "app/views/#{options[:view_directory]}/#{file_name}.html.haml"
      end

      def create_yml
        template "page.yml", "app/data/#{file_name}.yml"
      end

      def create_javascript
        create_file "app/assets/javascripts/#{file_name}/#{file_name}.js" if options[:include_js]
      end

      def create_stylesheets
        if options[:include_styles]
          template "main.css.sass", "app/assets/stylesheets/#{file_name}/#{file_name}.css.sass"
        end
      end

    end
  end
end
