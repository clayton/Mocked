VCR.config do |c|
  c.cassette_library_dir     = File.join(Rails.root, 'features', 'fixtures', 'cassette_library')
  c.http_stubbing_library    = :webmock
  c.ignore_localhost         = true
  c.default_cassette_options = { :record => :none }
end

Before do
  VCR.insert_cassette('twitter-search', :record => :new_episodes)
end