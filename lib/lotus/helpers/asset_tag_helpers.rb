module Lotus
  module Helpers
    # The helper methods used for using assets.
    #
    # @since 0.6.0
    # @api public
    module AssetTagHelpers

      def image(name, options = {})
        options[:src] = "/assets/#{name}"
        options[:alt] = Lotus::Utils::String.new(File.basename(name, File.extname(name))).titleize

        html.img(options)
      end
    end
  end
end