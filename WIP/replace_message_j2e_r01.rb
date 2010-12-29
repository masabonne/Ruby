def replace_j2e()
  Dir.glob("sql/*.sql").each{|file_name|
    File.open(file_name){|sql_io|
      while sql_line = sql_io.gets
        File.open("JP_EN.dat"){|dat_io|
          while line = dat_io.gets
            message_array = line.split(/\t/)
            if line =~ /#{message_array[0]}/
               puts sql_line
#              puts line.gsub(/#{message_array[0]}/,message_array[1])
            end
          end
        }
      end
    }
  }
end

replace_j2e()
