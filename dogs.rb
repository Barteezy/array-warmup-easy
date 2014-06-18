require_relative "testing_library"

dogs = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]
more_dogs = ["Fido"]


def how_many_dogs(dogs)
  dogs.length
end

def name_lengths(dogs)
  dog_name_lengths = []
  dogs.each do |dog|
    dog_name_lengths.push(dog.length)
  end
  dog_name_lengths
end

def reverse_dog_names(dogs)
  dog_name_reverse = []
  dogs.each do |dog|
    dog_name_reverse.push(dog.reverse)
  end
  dog_name_reverse
end

def first_three_dogs_with_each(dogs)
  first_three_dogs = []

  dogs.each_with_index do |dog, index|
    if index == 3
      return first_three_dogs
    end

    first_three_dogs.push(dog)
  end
end


def first_three_dogs_without_each(dogs)
  dogs[0..2] #slicing an array

end

def reverse_case_dog_names(dogs)
  reverse_case_array = []
  dogs.map do |dog|
    reverse_case_array.push(dog.swapcase)
  end
  reverse_case_array
end

def sum_of_all_dog_name_lengths(dogs)
  sum = 0
  dogs.each do |dog|
    sum = sum + dog.length
  end
  sum
end

def dogs_with_long_names(dogs)
  long_dog_names = []
  dogs.each do |dog|
    long_dog_names.push(dog.length > 4)
    end
  long_dog_names

end

puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80

check("how_many_dogs", how_many_dogs(dogs) == 6)
check("how_many_dogs", how_many_dogs(more_dogs) == 1)
check("name_lengths", name_lengths(dogs) == [4, 8, 4, 6, 4, 7])
check("reverse_dog_names", reverse_dog_names(dogs) == ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"])
check("first_three_dogs_with_each", first_three_dogs_with_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("first_three_dogs_without_each", first_three_dogs_without_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("reverse_case_dog_names", reverse_case_dog_names(dogs) == ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"])
check("sum_of_all_dog_name_lengths", sum_of_all_dog_name_lengths(dogs) == 33)
check("dogs_with_long_names", dogs_with_long_names(dogs) == [false, true, false, true, false, true])

