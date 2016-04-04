Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV["569087001581-jal0k9p6oboe1tr8heaf0bmfgq3q2kvk.apps.googleusercontent.com
"], ENV["sw2npvtc5fb-NGQkylv4U8rB"]
end