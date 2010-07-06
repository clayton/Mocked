# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mocked_session',
  :secret      => '97ece92c4fc3f82ce9074d9a08276439f0307b3d8e4efcb256c70f921c411d97f9f0694fa210298353185eb5cf61b53765cf30364f63d230618c030d96710d26'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
