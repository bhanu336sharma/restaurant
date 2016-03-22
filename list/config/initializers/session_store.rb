# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_list_session',
  :secret      => '640d9dbea81b11972e921fec6dbeaf9dc8823ccebd5d9c319797b9d4dce8fb916bec2bbbe44651f57e46065a0fc91db3dedea572344f25489f17ad1bbc69876c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
