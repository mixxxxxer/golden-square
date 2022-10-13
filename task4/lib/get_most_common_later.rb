def get_most_common_letter(text)
  text.gsub!(/[^[:alpha:]]/, "").downcase
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
  counter.to_a.max_by { |k, v| v }[0]
end

# Intended output:
# 
print get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"