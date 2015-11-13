# RutubeApi

Ruby wrapper for Rutube API [http://dev.rutube.ru/](http://dev.rutube.ru/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rutube_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rutube_api

## Usage

### Simple Example

```ruby
# default config
RutubeApi.configure do |config|
  config.adapter = Faraday.default_adapter
  config.connection_options = {}
  config.format = :json
  config.endpoint = 'http://rutube.ru/api/'
end

videos = RutubeApi.user_video(12111)
puts videos.results.count
```

All API calls return [Hashie::Mesh](https://github.com/intridea/hashie)

### List of supported methods:

####Video API [http://dev.rutube.ru/api_video](http://dev.rutube.ru/api_video)

**List of user's video**
  `RutubeApi.user_video(12111)`
  makes request to [http://rutube.ru/api/video/person/12111/](http://rutube.ru/api/video/person/12111/)

**Info of a given user**
  `RutubeApi.user(12111)`
  makes request to [http://rutube.ru/api/profile/user/12111/](http://rutube.ru/api/profile/user/12111/)

**All channels tags**
  `RutubeApi.tags`
  makes request to [http://rutube.ru/api/tags/](http://rutube.ru/api/tags/)

**All videos by tag ID**
  `RutubeApi.tag_videos(1556)`
  makes request to [http://rutube.ru/api/tags/video/1556/](http://rutube.ru/api/tags/video/1556/)

**All tv shows**
  `RutubeApi.tv_shows`
  makes request to [http://rutube.ru/api/metainfo/tv/](http://rutube.ru/api/metainfo/tv/)

**All episodes of given show id**
  `RutubeApi.show_episodes(28, season: 4)`
  makes request to [http://rutube.ru/api/metainfo/tv/28/video/?season=4](http://rutube.ru/api/metainfo/tv/28/video/?season=4)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/SamMolokanov/rutube_api.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
