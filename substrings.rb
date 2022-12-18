def substrings(string, wordlist)
  result = {}

  wordlist.select do |word|
    matches = string.downcase.scan(word).count
    result[word] = matches unless matches == 0
  end
  p result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)