def substrings(string,dictionary)
  rep_substrings = Hash.new(0)
  new_string = string.downcase.split(" ")

  new_string.each do |word|
    dictionary.each do |item|
      if item.include?(word)
        rep_substrings[word] += 1
      end
    end
  end
  p rep_substrings 
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)