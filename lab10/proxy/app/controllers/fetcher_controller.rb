require 'open-uri'
require 'nokogiri'
class FetcherController < ApplicationController
  def count
    arr = params[:arr]
    if params[:arr] == nil then arr = '' end
    if (params[:converter] == "") || (params[:converter] == nil) then conv = '/converter'
    else conv = params[:converter]
    end
    xslt = Nokogiri::XSLT(open(Rails.root.join('public/converter.xslt')).read)
    xml = Nokogiri::XML(open('http://localhost:3000/answer?arr=' + arr).read)

    if params[:ext] == "xml" then
      render xml: xml
      return
    elsif params[:conversion] == "client" then
      xsl = Nokogiri::XML::ProcessingInstruction.new(xml, "xml-stylesheet",
        %(type="text/xsl" href="#{conv}"))

      xml.root.add_previous_sibling xsl
      render inline: xml.to_s
      return
    else
        output = xslt.transform(xml).to_s
        render inline: output
        return
    end
  end

  def converter
    render inline: open(Rails.root.join('public/converter.xslt')).read
  end
end
