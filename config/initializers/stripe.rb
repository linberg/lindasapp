if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_EvXbmViwKM0amVK2zmCCOJyH',
    :secret_key => 'sk_test_lmKEKKjs8IxqyTMXq6s0WaUS'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
