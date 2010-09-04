# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_example_app_session',
  :secret      => '1c6e02941b0fd7bae41b8fb94157deab7acfaf3bdd690c00f38fa7e8373c5d2174324505c6e3e9aedec499518592241704e52d0ece68704665672b55fb7c8454'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
