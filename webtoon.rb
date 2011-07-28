#!/usr/bin/env ruby

require 'rubygems'
require 'mechanize'

def new_webtoon?
  a = Mechanize.new.get 'http://comic.naver.com/webtoon/list.nhn?titleId=15568'
  a.search('//td[@class="title"]/a')[0].text =~ /\(\d+\)\s*\z/
end

puts new_webtoon? ? "Time for sleep!" : "Webtoon Time!"
