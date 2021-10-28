json.extract! hospital, :id, :hospi_name, :hospi_adresse, :created_at, :updated_at
json.url hospital_url(hospital, format: :json)
