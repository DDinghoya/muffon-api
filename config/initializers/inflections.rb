# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.acronym 'API'
  inflect.acronym 'LastFM'
  inflect.acronym 'VK'
  inflect.acronym 'YouTube'
  inflect.acronym 'SoundCloud'
  inflect.acronym 'YandexMusic'

  inflect.uncountable %w[discogs genius]
end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym "RESTful"
# end
