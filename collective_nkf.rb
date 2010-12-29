def collective_nkf(dir)
	require 'nkf'
	#デフォルトはconvertingフォルダ内のファイルが対象
	dir = "converting" if dir == nil
	#STファイル用
	stFiles = Dir.glob(dir + "/*.st")
	stFiles.each{ |file_name|
		puts file_name
		#ファイル内容を読込み
		File.open(file_name , 'r+'){ |io|
			while line = io.gets
				puts NKF.guess(line)
			end
		}
#		sjis_contents = NKF.nkf('-s', contents)
#		file.puts(sjis_contents)
	}
	#SQLファイル用
	sqlFiles = Dir.glob(dir + "/*.sql")
	sqlFiles.each{ |file|
		puts file
	}
end

collective_nkf(ARGV[0])
