def del_svn_dir(path)
require "fileutils"
  path = "." if path == nil
  #.*は隠しファイル取得
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
