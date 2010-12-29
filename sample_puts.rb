def sample_puts(filename)
File.open(filename){|io|
	while line = io.gets
		line  =~ /(\s\(.+?\))/
		puts $&
	end
}
end

sample_puts(ARGV[0])
