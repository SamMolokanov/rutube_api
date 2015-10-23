module RutubeApi

  # Defines HTTP request methods
  module Request

    # Perform an HTTP GET request
    def get(path, options={})
      options['format'] ||= format

      connection.get do |request|
        request.url URI.encode(path)
        request.params.merge! options
      end
    end
  end
end
