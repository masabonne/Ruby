Dir.glob("**/*.sql").each{|name|
  name.gsub!(/\// , '\\')
  puts "call rrunsql.bat sql\\" + name
  }
  
