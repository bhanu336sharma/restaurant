Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :linkedin, '75jaxgu61c3yw2', 'ljLuUBMwJ3tPPNyg'
end