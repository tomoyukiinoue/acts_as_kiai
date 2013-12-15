class Article < ActiveRecord::Base
	acts_as_kiai :content
end
