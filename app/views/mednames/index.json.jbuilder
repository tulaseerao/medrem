json.array!(@mednames) do |medname|
  json.extract! medname, :id, :name, :strength, :form, :purpose
  json.url medname_url(medname, format: :json)
end
