class App < Sinatra::Base

  use Rack::JSONP

  SUBDOMAIN   = 'supportpay'
  PRIVATE_KEY = 'a26316e92322494689c59a1d65b72e5b'

  get '/:plan/signature' do
    content_type :json
    Recurly.subdomain      = SUBDOMAIN
    Recurly.js.private_key = PRIVATE_KEY

    signature = Recurly.js.sign subscription: { plan_code: params[:plan] }
    { signature: signature }.to_json
  end
end
