require 'rails_helper'

describe 'Article' do
  context 'get /api/v1/articles' do
    it '.successfully' do
      get '/api/v1/articles'

      expect(response).to have_http_status(:ok)
    end

    it '#successfully' do
      create(:article)

      get '/api/v1/articles/1'

      res = api_json
      data = res[:data]
      attrs = data[:attributes]

      expect(response).to have_http_status(:ok)
      expect(data[:type]).to eq('articles')
      expect(data[:id]).to eq('1')
      expect(attrs[:title]).to eq('Title-n1')
      expect(attrs[:content]).to eq('MyText')
      expect(attrs[:slug]).to eq('url-n1')
    end
  end
end
