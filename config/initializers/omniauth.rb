OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :facebook, '632994823489302', 'b93fb5e312ccd8061632e9f6b9891791' , {:scope => "email, read_stream, read_friendlists, friends_likes, friends_status, offline_access"}
  provider :facebook, '632994823489302', 'b93fb5e312ccd8061632e9f6b9891791' , :scope => ["email", "read_stream", "read_friendlists", "friends_likes", "friends_status", "offline_access", "user_about_me", "user_likes", "user_tagged_places", "user_interests", "user_status", "user_groups", "user_events", "user_activities"]
end