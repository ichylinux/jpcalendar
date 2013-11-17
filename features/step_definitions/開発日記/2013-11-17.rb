# coding: UTF-8

もし /^雛形を生成$/ do |string|
end

もし /^Gemfileを編集$/ do |string|
  git_diff 'Gemfile', :and => 'f4383f6cec66bd81e40b9ceaa455d0d5a17d8c8d'
end

もし /^ライブラリをインストール$/ do |string|
end

もし /^DB定義を生成$/ do |string|
  git_diff 'config/database.yml', :and => 'f4383f6cec66bd81e40b9ceaa455d0d5a17d8c8d', :as => 'auto'
end

もし /^DBを作成$/ do |string|
end
