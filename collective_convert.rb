# -*- encoding: utf-8 -*-
def collective_convert(dir)
	#�f�t�H���g��converting�t�H���_���̃t�@�C�����Ώ�
	dir = "converting" if dir == nil
	#ST�t�@�C���p
	stFiles = Dir.glob(dir + "/*.st")
	stFiles.each{ |file|
		puts file
		#�t�@�C����UTF-8��������SJIS�ɕϊ�
		file_enc = %x{"nkf" , "-g #{file}"}
		if file_enc == "UTF-8" then
			%x{"nkf" , "-s --overwrite #{file}"}
		end if
		%x{"rrun.bat" , #{file}}
	}
	#SQL�t�@�C���p
	sqlFiles = Dir.glob(dir + "/*.sql")
	sqlFiles.each{ |file|
		puts file
		%x{"rrunsql.bat" , #{file}}
	}
end

collective_convert(ARGV[0])
