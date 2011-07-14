#!/usr/bin/env ruby

require 'rubygems'
require 'mechanize'

a = Mechanize.new.get 'http://comic.naver.com/webtoon/list.nhn?titleId=15568&weekday=thu'
puts a.search('//td[@class="title"]/a')[0].inner_html
