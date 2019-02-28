def get_name(person)
  return person[:name]
end

def get_favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def check_favourite_snack(person, food)
  person[:favourites][:snacks].include?(food)
end

def add_friend(person, friend)
  person[:friends].push(friend)
  return person[:friends].length
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
  return person[:friends].length
end

def total_monies(people)
  count = 0
  for person in people
    count += person[:monies]
  end
  return count
end

def lending(person1, person2, amount)
  money_array = []
  monies_person_1 = person1[:monies] - amount
  monies_person_2 = person2[:monies] + amount
  money_array << monies_person_1 <<  monies_person_2
end

def favourite_snacks(people)
  all_snacks = []
  for person in people
    all_snacks.concat(person[:favourites][:snacks])
  end
  return all_snacks
end

def no_friends(people)
  no_friends_array = []
  for person in people
    person[:friends] == nil
  end
  return no_friends_array.push(person[:name])
end
