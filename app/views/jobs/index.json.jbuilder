json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :description, :deadline, :text
  json.url job_url(job, format: :json)
end
