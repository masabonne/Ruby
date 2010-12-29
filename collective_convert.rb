# -*- encoding: utf-8 -*-
def collective_convert(dir)
	#デフォルトはconvertingフォルダ内のファイルが対象
	dir = "converting" if dir == nil
	#STファイル用
	stFiles = Dir.glob(dir + "/*.st")
	stFiles.each{ |file|
		puts file
		#ファイルがUTF-8だったらSJISに変換
		file_enc = %x{"nkf" , "-g #{file}"}
		if file_enc == "UTF-8" then
			%x{"nkf" , "-s --overwrite #{file}"}
		end if
		%x{"rrun.bat" , #{file}}
	}
	#SQLファイル用
	sqlFiles = Dir.glob(dir + "/*.sql")
	sqlFiles.each{ |file|
		puts file
		%x{"rrunsql.bat" , #{file}}
	}
end

collective_convert(ARGV[0])
