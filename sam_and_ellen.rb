class SamAndEllen < Sinatra::Base
  PREFERRED_HOST = 'samandellen.com'.freeze
  WEDDING_DATE = Date.parse('2013-09-21').freeze

  if ENV['RACK_ENV'] == 'production'
    before do
      if request.host != PREFERRED_HOST
        redirect to("http://#{PREFERRED_HOST + request.path_info}")
      end
    end
  end

  get '/' do
    @days = (WEDDING_DATE - Date.today).to_i
    erb :index
  end
end
