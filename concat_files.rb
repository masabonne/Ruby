=begin
	���O�Fconcat_files
	�T�v�F����f�B���N�g���ȉ��̂���g���q�̃t�@�C�������ׂČ������܂�
	�����F
		�P�F�Ώۃf�B���N�g��
		�Q�F�Ώۃt�@�C���̊g���q
	���l�F�����t�@�C���̖��O�́u"concat_"�{�����P�{�����Q�v�ƂȂ�܂�
		��File.open()�̂Ƃ���ŃG���R�[�f�B���O�w�肪�K�v�Ȃ͂��Ȃ̂Ŏg�p���Ɏw�肵�Ă����Ă�������
=end

def concat_files(dir , file_ext)
	#�V�t�@�C���쐬
	filename = "concat_" + dir + "." + file_ext
	File.open(filename , "w"){|write_file|
		#�t�@�C�����e��ǂݎ���ĐV�t�@�C���ɏ�������
		read_files = Dir.glob(dir + "/*." + file_ext)
		read_files.each{ |file|
			contents = File.read(file)
			write_file.puts(contents)
		}
	}
end

concat_files(ARGV[0] , ARGV[1])
