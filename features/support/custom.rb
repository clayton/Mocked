VCR.config do |c|
  c.cassette_library_dir     = File.join(Rails.root, 'features', 'fixtures')
  c.http_stubbing_library    = :fakeweb
  c.default_cassette_options = { :record => :none }
end

Before do |scenario|
  VCR.insert_cassette(scenario.name, :record => :new_episodes)
end

After do
  VCR.eject_cassette
end