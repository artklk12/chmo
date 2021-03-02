module Dadaya
	def self.products_by_vid(vid_url)
		html = open(vid_url) { |result| result.read }

		document = Nokogiri::HTML(html)

  		document.css('div.sku-card-small-container').map do |tr_node|
		{
			name: tr_node.at('.sku-card-small__title').text.gsub(/\s/, ' ' ).strip,
			oldprice: tr_node.at('.sku-price--regular').text.gsub(/\s/, ''),
			newprice:  tr_node.at('.sku-price--primary').text.gsub(/\s/, '')
		}
		end
	end
end