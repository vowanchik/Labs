class HandlerController < ApplicationController
  def main
  end

  def answer
    rec = Rec.find_by(seq: params[:arr])
    if rec.nil? then
        rec = Rec.new do |r|
          r.result = params[:arr]
        end
        rec.save
    end
    @output = JSON.parse(rec.res)
  end
end
