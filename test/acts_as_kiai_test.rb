require 'test_helper'

class ActsAsKiaiTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, ActsAsKiai
  end

  test "kiai_text_fieldでTweetモデルのtextフィールドが返ること" do
  	assert_equal 'text', Tweet.kiai_text_field
	end

	test "kiai_text_fieldでArticleモデルのcontentフィールドが返ること" do
		assert_equal 'content', Article.kiai_text_field
	end

	test "Tweetを保存すると気合が入ること" do
		tweet = Tweet.new
		tweet.text = "こんにちわ、私の名前は山田花子です。・・・やめてください、嫌です！そんな！？"
		tweet.save

		assert_equal "こんにちわっ！私の名前は山田花子ですっ！！・・・やめてくださいっ！嫌ですっっっ！！！そんなーーーーっっっつつつ！！！？？？", tweet.text
	end

	test "Articleを保存すると気合が入ること" do
		article = Article.new
		article.content = "え、なに！？あ！そういうことか。"
		article.save

		assert_equal "えっ！なにーーーーっっっつつつ！！！？？？あっっっ！！！そういうことかっ！！", article.content
	end

end
