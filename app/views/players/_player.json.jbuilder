json.extract! player, :id, :name, :team_id, :avatar, :created_at, :updated_at
json.url player_url(player, format: :json)
