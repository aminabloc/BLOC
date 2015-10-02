json.array!(@japps) do |japp|
  json.extract! japp, :id, :statement, :resume, :cover
  json.url japp_url(japp, format: :json)
end
