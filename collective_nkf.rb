def collective_nkf(dir)
	require 'nkf'
	#�f�t�H���g��converting�t�H���_���̃t�@�C�����Ώ�
	dir = "converting" if dir == nil
	#ST�t�@�C���p
	stFiles = Dir.glob(dir + "/*.st")
	stFiles.each{ |file_name|
		puts file_name
		#�t�@�C�����e��Ǎ���
		File.open(file_name , 'r+'){ |io|
			while line = io.gets
				puts NKF.guess(line)
			end
		}
#		sjis_contents = NKF.nkf('-s', contents)
#		file.puts(sjis_contents)
	}
	#SQL�t�@�C���p
	sqlFiles = Dir.glob(dir + "/*.sql")
	sqlFiles.each{ |file|
		puts file
	}
end

collective_nkf(ARGV[0])
