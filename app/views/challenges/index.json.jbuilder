json.array!(@challenges) do |challenge|
  json.extract! challenge, :body
  json.url challenge_url(challenge, format: :json)
end
