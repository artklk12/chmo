require 'open-uri'
require 'byebug'
require 'nokogiri'

require_relative 'lib/kulity'

url = 'https://lenta.com/catalog/myaso-ptica-kolbasa/'

products = Dadaya.products_by_vid(url)


puts products