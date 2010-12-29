=begin
	名前：concat_files
	概要：あるディレクトリ以下のある拡張子のファイルをすべて結合します
	引数：
		１：対象ディレクトリ
		２：対象ファイルの拡張子
	備考：結合ファイルの名前は「"concat_"＋引数１＋引数２」となります
		※File.open()のところでエンコーディング指定が必要なはずなので使用時に指定してあげてください
=end

def concat_files(dir , file_ext)
	#新ファイル作成
	filename = "concat_" + dir + "." + file_ext
	File.open(filename , "w"){|write_file|
		#ファイル内容を読み取って新ファイルに書き込み
		read_files = Dir.glob(dir + "/*." + file_ext)
		read_files.each{ |file|
			contents = File.read(file)
			write_file.puts(contents)
		}
	}
end

concat_files(ARGV[0] , ARGV[1])
