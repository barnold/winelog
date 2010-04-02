# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_winelog_session',
  :secret      => 'dffe91226df6ea234873d80ae96bf6ddf55c63a0c759b93c87481abbb420be7c1e06c5bf3536529bcbfddc9bcc31c0886ecd6b68e267115910c5be6f327a063b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
