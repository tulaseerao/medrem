json.array!(@dependents) do |dependent|
  json.extract! dependent, :id
  json.url dependent_url(dependent, format: :json)
end
