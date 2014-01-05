json.array!(@medications) do |medication|
  json.extract! medication, :id, :name, :dosage, :form, :amount_i_take, :days_i_take, :quantity, :date_prescribed, :last_refill, :days_ahead_reminder, :pharmacy, :doctor, :notes
  json.url medication_url(medication, format: :json)
end
