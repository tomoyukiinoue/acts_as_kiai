# lib/acts_as_kiai.rb

require 'acts_as_kiai/core'

module ActsAsKiai

	extend ActiveSupport::Concern

	included do
		before_save do
			# 現在の値を取得して
			string = read_attribute(self.class.kiai_text_field)
			# 気合を入れて書き込む
			write_attribute(self.class.kiai_text_field, string.to_kiai)
		end
	end

	module ClassMethods
		def acts_as_kiai(field = nil)
			cattr_accessor :kiai_text_field
			self.kiai_text_field = (field||:text).to_s
		end
	end
end

ActiveRecord::Base.send :include, ActsAsKiai

