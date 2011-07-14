#!/usr/bin/env ruby

require 'rubygems'
require 'mechanize'

a = Mechanize.new
p = a.get 'http://comic.naver.com/webtoon/list.nhn?titleId=15568&weekday=thu'
puts p.search('//td[@class="title"]/a').inner_html
