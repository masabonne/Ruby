# -*- encoding: utf-8 -*-
def del_old_dir(path)
require "fileutils"
  path = "." if path == nil
  Dir.glob("#{path}/**/*").each{|name|
    if FileTest.directory?(name)
      if name =~ /.*old/
        puts name
        FileUtils.rm_r(name)
      end
    end
  }
  
end

del_old_dir(ARGV[0])
