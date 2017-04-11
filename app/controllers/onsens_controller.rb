class OnsensController < ApplicationController
  def onsen
    require 'rexml/document'
    require 'open-uri'
    require 'nkf'

    print "Content-Type: text/html\r\n\r\n"

    url = 'http://jws.jalan.net'
    path = '/APICommon/OnsenSearch/V1/?key=vir15b23532ca9&l_area=010300&count=1&xml_ptn=1'
    result = open(url + path)

    doc = REXML::Document.new(result)

    doc.elements.each ('lwws/') do |element|
      puts NKF.nkf("-Ws", element.elements['title'].text)
    end
  end
end
