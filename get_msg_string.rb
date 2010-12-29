Dir.glob("**/*.sql").each{|name|
  File.open(name){|io|
    while line = io.gets
      if line =~ /t\$msg\s*:=.*$/
        puts name + ' >> ' + $&
      end
    end
    }
  }
