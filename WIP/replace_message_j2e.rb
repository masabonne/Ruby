def replace_j2e()
require "csv"
aHash = Hash.new{|hash,key| hash[key] = key}

CSV.parse(".\dic.dat" , $;){|row|
  anArray = row.to_a
  aHash[anArray[0]] = anArray[1]
  }
p aHash
end

replace_j2e()
