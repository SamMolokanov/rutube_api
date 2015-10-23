module RutubeApi
  # Wrapper for the Rutube API
  #
  # @note All methods have been separated into modules and follow the same grouping used in http://dev.rutube.ru/
  # @see http://dev.rutube.ru/
  class Client < API
    Dir[File.expand_path('../client/*.rb', __FILE__)].each { |f| require f }

    include RutubeApi::Client::Video
  end
end
