def test_hash()
require 'pp'
#1.HashにJP_EN.datの内容を取り込む
  aHash = Hash.new{|hash,key| hash[key] = key}
  File.open("JP_EN.dat"){|io|
    while line = io.gets
      msg_array = line.chomp.split(/\t/)	#chomp：改行削除
      aHash.store(msg_array[0],msg_array[1])	#store：Hashに溜める
    end
  }
#  pp aHash

#2.置換
  Dir.glob("sql/*.sql").each{|file|
    File.open(file){|sql_io|
      while sql_line = sql_io.gets
        aHash.each{|key , value|
          if sql_line =~ /#{key}/
            puts "aaa"
#            puts #{value}
          end
        }
      end
    }
  }

end

test_hash()
