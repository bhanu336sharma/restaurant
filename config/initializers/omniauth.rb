Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, "569087001581-jal0k9p6oboe1tr8heaf0bmfgq3q2kvk.apps.googleusercontent.com
","sw2npvtc5fb-NGQkylv4U8rB", { scope: ['email', 'https://www.googleapis.com/auth/gmail.modify'],
    access_type: 'offline'}
end