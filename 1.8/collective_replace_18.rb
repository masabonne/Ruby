def collective_replace(dir)
	#置き換えたい言葉を指定。before_wordは正規表現OKです。
	#正規表現の場合は、/****/で。\などの哲齦ｶ字は重ねてください。
	before_word = "aa"
	after_word = "zz"
	dir = "c:/temp"
	extension = "txt"

	files = Dir.glob(dir + "/**/*" + extension)
	puts "Changing these files"
	puts files
	files.each{ |file_name|
		file = File.open(file_name , "r+")
		content = file.readlines
		content.each{ |line|
			line.gsub!(before_word , after_word)
		}
		file.rewind
		file.print content
	}
end

collective_replace(ARGV[0])
