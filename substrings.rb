def substrings word, arr
    strings = Hash.new
    arr.each do |sub|
        word.scan(/#{sub}/i).each do
            if strings.key?(sub)
                strings[sub] = strings[sub] + 1
            else
                strings[sub] = 1
            end
        end
    end
    return strings
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings "below", dictionary
puts substrings "Howdy partner, sit down! How's it going?", dictionary