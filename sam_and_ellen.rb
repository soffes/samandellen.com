class SamAndEllen < Sinatra::Base
  get '/' do
    today = Date.today
    wedding = Date.parse('2013-09-21')
    @days = (wedding - today).to_i
    erb :index
  end
end
