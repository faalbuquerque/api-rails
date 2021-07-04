module ArticleHelper
  def api_json
    JSON.parse(response.body).deep_symbolize_keys
  end
end
