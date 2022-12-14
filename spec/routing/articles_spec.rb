require 'rails_helper'

RSpec.describe '/articles routes' do
  it 'routes to articles#index' do
    aggregate_failures do # it runs both tests even after the first one failes
      expect(get '/articles').to route_to('articles#index')
      expect(get '/articles?page[number]=3').to route_to('articles#index', page: {'number' => '3'})
    end
  end

  it 'routes to articles#show' do
    expect(get '/articles/1').to route_to('articles#show', id: '1')
  end
end
