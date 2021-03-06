def zenkaku2hankaku(filename)
kanaHash = Hash.new{|hash,key| hash[key] = key}
kanaHash["�A"] = "�"
kanaHash["�C"] = "�"
kanaHash["�E"] = "�"
kanaHash["�G"] = "�"
kanaHash["�I"] = "�"
kanaHash["�J"] = "�"
kanaHash["�L"] = "�"
kanaHash["�N"] = "�"
kanaHash["�P"] = "�"
kanaHash["�R"] = "�"
kanaHash["�T"] = "�"
kanaHash["�V"] = "�"
kanaHash["�X"] = "�"
kanaHash["�Z"] = "�"
kanaHash["�\"] = "�"
kanaHash["�^"] = "�"
kanaHash["�`"] = "�"
kanaHash["�c"] = "�"
kanaHash["�e"] = "�"
kanaHash["�g"] = "�"
kanaHash["�i"] = "�"
kanaHash["�j"] = "�"
kanaHash["�k"] = "�"
kanaHash["�l"] = "�"
kanaHash["�m"] = "�"
kanaHash["�n"] = "�"
kanaHash["�q"] = "�"
kanaHash["�t"] = "�"
kanaHash["�w"] = "�"
kanaHash["�z"] = "�"
kanaHash["�}"] = "�"
kanaHash["�~"] = "�"
kanaHash["��"] = "�"
kanaHash["��"] = "�"
kanaHash["��"] = "�"
kanaHash["��"] = "�"
kanaHash["��"] = "�"
kanaHash["��"] = "�"
kanaHash["��"] = "�"
kanaHash["��"] = "�"
kanaHash["��"] = "�"
kanaHash["��"] = "�"
kanaHash["��"] = "�"
kanaHash["��"] = "�"
kanaHash["��"] = "�"
kanaHash["��"] = "�"
kanaHash["�@"] = "�"
kanaHash["�B"] = "�"
kanaHash["�D"] = "�"
kanaHash["�F"] = "�"
kanaHash["�H"] = "�"
kanaHash["�b"] = "�"
kanaHash["��"] = "�"
kanaHash["��"] = "�"
kanaHash["��"] = "�"
kanaHash["��"] = "��"
kanaHash["�K"] = "��"
kanaHash["�M"] = "��"
kanaHash["�O"] = "��"
kanaHash["�Q"] = "��"
kanaHash["�S"] = "��"
kanaHash["�U"] = "��"
kanaHash["�W"] = "��"
kanaHash["�Y"] = "��"
kanaHash["�["] = "��"
kanaHash["�]"] = "��"
kanaHash["�_"] = "��"
kanaHash["�a"] = "��"
kanaHash["�d"] = "��"
kanaHash["�f"] = "��"
kanaHash["�h"] = "��"
kanaHash["�o"] = "��"
kanaHash["�r"] = "��"
kanaHash["�u"] = "��"
kanaHash["�x"] = "��"
kanaHash["�{"] = "��"
kanaHash["�p"] = "��"
kanaHash["�s"] = "��"
kanaHash["�v"] = "��"
kanaHash["�y"] = "��"
kanaHash["�|"] = "��"
kanaHash["�O"] = "0"
kanaHash["�P"] = "1"
kanaHash["�Q"] = "2"
kanaHash["�R"] = "3"
kanaHash["�S"] = "4"
kanaHash["�T"] = "5"
kanaHash["�U"] = "6"
kanaHash["�V"] = "7"
kanaHash["�W"] = "8"
kanaHash["�X"] = "9"
kanaHash["�I"] = "\!"
kanaHash["�h"] = "\""
kanaHash["��"] = "\#"
kanaHash["��"] = "\$"
kanaHash["��"] = "\%"
kanaHash["��"] = "\&"
kanaHash["�f"] = "\'"
kanaHash["�i"] = "\("
kanaHash["�j"] = "\)"
kanaHash["�O"] = "\^"
kanaHash["�`"] = "\~"
kanaHash["��"] = "\\"
kanaHash["�b"] = "\|"
kanaHash["�A"] = "\,"
kanaHash["�C"] = "\,"
kanaHash["�B"] = "\."
kanaHash["�Q"] = "\_"
kanaHash["�{"] = "\+"
kanaHash["�|"] = "\-"
kanaHash["�["] = "\-"
kanaHash["��"] = "\*"
kanaHash["�^"] = "\/"
kanaHash["�G"] = "\;"
kanaHash["�F"] = "\:"
kanaHash["��"] = "\<"
kanaHash["��"] = "\>"
kanaHash["�u"] = "\["
kanaHash["�v"] = "\]"
kanaHash["�o"] = "\{"
kanaHash["�p"] = "\}"
kanaHash["��"] = "\@"
kanaHash["��"] = "\="
new_filename = filename + '_'
new_file = File.open(new_filename,"w")
File.open(filename){|io|
	while line = io.gets
		str = String.new
		chars = line.split(//s)
		chars.each{|char|
			str += kanaHash[char]
		}
		new_file << str
	end
}
new_file.close
end

zenkaku2hankaku(ARGV[0])
