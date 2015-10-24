module RutubeApi
  class Client

    # Defines methods related to video
    #
    # @see http://dev.rutube.ru/api_video
    module Video

      # Returns video list of a given user
      #
      # @overload user_video(id=nil, options={})
      #   @param id [Integer] A Rutube user ID
      #   @return [Hashie::Mesh] The list of videos.
      #   @example Return [Hashie::Mesh] with video list
      #     RutubeApi.user_video(12111)
      #
      def user_video(*args)
        options = args.last.is_a?(Hash) ? args.pop : {}
        id = args.first
        response = get("video/person/#{id}/", options)
        response.body
      end

      # Returns info of a given user
      #
      # @overload user(id=nil, options={})
      #   @param id [Integer] A Rutube user ID
      #   @return [Hashie::Mesh] The user's info.
      #   @example Return [Hashie::Mesh] with user's info
      #     RutubeApi.user(12111)
      #
      def user(*args)
        options = args.last.is_a?(Hash) ? args.pop : {}
        id = args.first
        response = get("profile/user/#{id}/", options)
        response.body
      end

      # Returns all channels tags
      #
      # @overload tags(_)
      #   @return [Hashie::Mesh] All channels tags.
      #   @example Return [Hashie::Mesh] with all channels tags
      #     RutubeApi.tags()
      #
      def tags(*args)
        options = args.is_a?(Hash) ? args : {}
        response = get("tags/", options)
        response.body
      end

      # Returns all videos by tag ID
      #
      # @overload tag_videos(tag_id=nil, options={})
      #   @param id [Integer] A Rutube tag ID
      #   @return [Hashie::Mesh] The list of videos with given tag.
      #   @example Return [Hashie::Mesh] with video list
      #     RutubeApi.tag_videos(1556)
      #
      def tag_videos(*args)
        options = args.last.is_a?(Hash) ? args.pop : {}
        id = args.first
        response = get("tags/video/#{id}/", options)
        response.body
      end

      # Returns all tv shows
      #
      # @overload tv_shows(_)
      #   @return [Hashie::Mesh] All tv shows.
      #   @example Return [Hashie::Mesh] with all tv shows
      #     RutubeApi.tv_shows()
      #
      def tv_shows(*args)
        options = args.is_a?(Hash) ? args : {}
        response = get("metainfo/tv/", options)
        response.body
      end

    end
  end
end
