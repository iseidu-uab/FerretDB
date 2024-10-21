json.extract! ferret_db, :id, :date_of_birth, :genotype, :identifiers, :location, :owner, :created_at, :updated_at
json.url ferret_db_url(ferret_db, format: :json)
