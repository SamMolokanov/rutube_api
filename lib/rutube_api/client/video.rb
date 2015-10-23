module RutubeApi
  class Client

    # Defines methods related to video
    #
    # @see http://dev.rutube.ru/api_video
    module Video

      # Returns video list of a given user
      #
      # @overload user_video(id=nil, options={})
      #   @param id [Integer] An Rutube user ID
      #   @return [Array] The list of videos.
      #   @example Return array of Json with video list
      #     RutubeApi.user_video(12111)
      #
      def user_video(*args)
        options = args.last.is_a?(Hash) ? args.pop : {}
        id = args.first
        response = get("video/person/#{id}/", options)
        response.body
      end
    end
  end
end
