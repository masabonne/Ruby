def test_hash()
require 'pp'
#1.Hash��JP_EN.dat�̓��e����荞��
  aHash = Hash.new{|hash,key| hash[key] = key}
  File.open("JP_EN.dat"){|io|
    while line = io.gets
      msg_array = line.chomp.split(/\t/)	#chomp�F���s�폜
      aHash.store(msg_array[0],msg_array[1])	#store�FHash�ɗ��߂�
    end
  }
#  pp aHash

#2.�u��
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
