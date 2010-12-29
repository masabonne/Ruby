# -*- encoding: utf-8 -*-
def collective_replace(dir)
	#置き換えたい言葉を指定。before_wordは正規表現OKです。
	#正規表現の場合は、/****/で。\などの特殊文字は重ねてください。
	before_word = "yy"
	after_word = "ああ"
	dir = "c:/temp"
	extension = "txt"

	files = Dir.glob(dir + "/**/*" + extension)
	puts "Changing these files"
	puts files
	files.each{ |file_name|
		new_filename = file_name + '_'
		new_file = File.open(new_filename,"w:windows-31j")
		file = File.open(file_name , "r+:windows-31j:utf-8")
		file.each{ |line|
			new_line = line.gsub(before_word , after_word)
			new_file << new_line
		}
		file.close
		new_file.close
		File.unlink(file)
		File.rename(new_file , file)
	}
end

collective_replace(ARGV[0])
