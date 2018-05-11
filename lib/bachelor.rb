def get_first_name_of_season_winner(data, season)
  # code here
  season_winner = nil
  #iterate through season, then compare status
  data[season].each do |contestants|
    if contestants["status"] == "Winner"
      season_winner = contestants["name"].split(" ")[0]
    end
  end
  return season_winner
end

def get_contestant_name(data, occupation)
  # code here
  contestant_name = nil
  data.each do |season, contestants| #contestants is an array
    contestants.each do |stats|
      if stats["occupation"] == occupation
        contestant_name = stats["name"]
      end
    end
  end
  return contestant_name
end




def get_occupation(data, hometown)
  # code here
  counter = 0 
  data.each do |season, contestants|
    contestants.each do |stats
      if stats["hometown"] == hometown
        counter +=1
      end
    end
  end  
end

def get_average_age_for_season(data, season)
  # code here
end
