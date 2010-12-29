# -*- encoding: utf-8 -*-
def del_svn_dir(path)
require "fileutils"
  path = "." if path == nil
  #.*‚Í‰B‚µƒtƒ@ƒCƒ‹Žæ“¾
  Dir.glob("#{path}/**/.*").each{|name|
    if FileTest.directory?(name)
      if name =~ /.*svn/
        puts name
        FileUtils.rm_r(name)
      end
    end
  }
  
end

del_svn_dir(ARGV[0])
