json.array!(@tweets) do |tweet|
  json.extract! tweet, :date, :user, :body, :link
  json.url tweet_url(tweet, format: :json)
end
