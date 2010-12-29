def put_classname(dir)
	dir = "." if dir == nil
	files = Dir.glob(dir + "/**/*.st")
	files.each{ |file|
		puts file
		File.open(file){|io|
		array = Array.new
			while line = io.gets
				if /^\!\w+/ =~ line
					array << $&.gsub!(/\!/ , "")
				end
			end
		array.uniq!
		puts array
		}
	}
end

put_classname(ARGV[0])
