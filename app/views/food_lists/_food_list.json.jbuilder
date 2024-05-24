json.extract! food_list, :id, :food_name, :food_amount, :donate_date, :collected_from, :donar_name, :created_at,
              :updated_at
json.url food_list_url(food_list, format: :json)
