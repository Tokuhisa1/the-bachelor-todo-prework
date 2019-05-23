def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |key, value|
    if key['status'] == 'Winner'
      return key['name'].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |key, value|
     value.each do |key2, value2|
        if key2['occupation'] == occupation
           return key2['name']
        end
     end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0

  data.each do |key, value|
   value.each do |key2, value2|
      if key2['hometown'] == hometown
         count = count + 1
      end
   end
  end

  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |key, value|
   value.each do |key2, value2|
      if key2['hometown'] == hometown
         return key2['occupation']
      end
   end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = 0
  count = 0

  data[season].each do |key, value|
   ages = ages + key['age'].to_f
   count = count + 1
  end

  (ages / count).round
end
