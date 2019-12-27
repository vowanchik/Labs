class HandlerController < ApplicationController
  def main
  end

  def answer
    rec = Rec.find_by(seq: params[:arr])
    if rec.nil? then
        rec = Rec.new do |r|
          r.set params[:arr]
        end
        rec.save
    end
    @output = rec.result
  end
end
