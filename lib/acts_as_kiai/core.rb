# lib/acts_as_kiai/core.rb

String.class_eval do 
	# 文字列に気合を入れます
	def to_kiai
		# ！？以外の！を置換します
		gsub!(/！(?!？)/, 'っっっ！！！')
		gsub!('！？', 'ーーーーっっっつつつ！！！？？？')
		gsub!('、', 'っ！')
		gsub('。', 'っ！！')
	end
end