class GiftList < ActiveRecord::Base
  require 'rest_client'
  require 'xmlsimple'

	scope :search, -> event_id, search { where('event_id = ? and lower(name) like ?', event_id, "%#{search.downcase}%") }


  Product = Struct.new(:name, :image, :minimum_price, :maximum_price)

  def buscape_info
    params = self.name + " " + self.brand
    result = XmlSimple.xml_in RestClient.get('http://sandbox.buscape.com/service/findProductList/lomadee/564771466d477a4458664d3d/?keyword=' + params.gsub(" ", "%20"))
    products = []
    result['product'].each do |product|
      products << Product.new(product['productShortName'][0], product['thumbnail'][0]['url'], (product['priceMin'][0] if product['priceMin'].is_a?(Array)), 'priceMax')
    end

    products
  end

end
