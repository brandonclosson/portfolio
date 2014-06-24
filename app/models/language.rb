class Language < ActiveRecord::Base
  has_many :bookmarks
  has_many :projects
end