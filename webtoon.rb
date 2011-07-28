#!/usr/bin/env ruby

require 'rubygems'
require 'mechanize'

a = Mechanize.new.get 'http://comic.naver.com/webtoon/list.nhn?titleId=15568&weekday=thu'
if a.search('//td[@class="title"]/a')[0].inner_html =~ /\(\d+\)\s*$/ then puts "Time for sleep!" else puts "Webtoon Time!" end
