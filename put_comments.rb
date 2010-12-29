def put_comments(fileName)
	File.open(fileName){|io|
		while line = io.gets
			if /name/ =~ line
				puts line
			end
		end
	}
end

put_comments(ARGV[0])
