json.array!(@pharmacies) do |pharmacy|
  json.extract! pharmacy, :id, :name, :phone, :address1, :address2, :city, :state, :zip, :website
  json.url pharmacy_url(pharmacy, format: :json)
end
