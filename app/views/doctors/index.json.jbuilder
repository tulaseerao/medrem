json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :phone, :address1, :address2, :city, :state, :zip, :specialty
  json.url doctor_url(doctor, format: :json)
end
