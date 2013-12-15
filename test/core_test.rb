# test/core_test.rb

require 'test_helper'

class CoreTest < ActiveSupport::TestCase

	# 「。」を「っ！！」に置換します
	def test_convert_maru_to_kiai
		assert_equal 'こんにちわっ！！', 'こんにちわ。'.to_kiai
	end

	# 「、」を「っ！」に置換します。
	def test_convert_ten_to_kiai
		assert_equal 'たとえばっ！', 'たとえば、'.to_kiai
	end

	# 「！」を「っっっ！！！」に置換します。
	def test_convert_bikkuri_to_kiai
		assert_equal '嫌ですっっっ！！！', '嫌です！'.to_kiai
	end

	#　「！？」を「ーーーっっっ！！！？？？」に置換します。
	def test_convert_hatena_to_kiai
		assert_equal 'なにーーーーっっっつつつ！！！？？？', 'なに！？'.to_kiai
	end

end