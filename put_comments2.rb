def put_comments2(fileName)
	require 'strscan'
	File.open(fileName){|io|
		strScan = StringScanner.new(io.read)
		until strScan.eos?
			case
				when strScan.scan(/\/\*(.*?)\*\//m)
					puts strScan[0]
				when strScan.scan(/(.|\n)/m)
					nil
			end
		end
	}
end

put_comments2(ARGV[0])
