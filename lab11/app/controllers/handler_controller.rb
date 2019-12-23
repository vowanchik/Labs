class HandlerController < ApplicationController
  def main
  end

  def answer
  	arrStart = params[:arr]
    rec = Rec.find_by(seq: arrStart.to_s)
    if rec == nil then
        rec = Rec.new do |num|
            num.seq = arrStart.to_s
            num.res = create_json(arrStart)
        end
        rec.save
    end
    @output = Rec.find_by(seq: arrStart.to_s).res
    render inline: @output
  end

  def create_json(arrStart)
    arrSplitted = arrStart.split().map{|str| str.to_i}
    @sequences = seq(arrSplitted)
    lengths = @sequences.map do
       |el| el.length
    end
    @max = @sequences[lengths.index(lengths.max)]
    html_format([['Sequences', 'Max'], [@sequences.map{|seq| seq.join(' ')}.join('<br />'), @max.join(' ')]])
  end

  def seq(arr)
    arrM = arr.unshift(arr[0]+1)
    arrM << arr[-1]
    map = []
    arrM.each_index do |i|
      map.push(i-1) if (i > 0) && (arrM[i-1] >= arrM[i])
    end
    sequences = []
    map.each_index do |i|
      sequences << arr[map[i-1]+1..map[i]] if map[i] >= map[i-1]
    end
    sequences
  end

  def html_format(rows)
   res = "<table><thead></thead><tbody>"
     rows.each do |row|
      res += "<tr>"
         row.each do |value|
           res += "<td>" + value.to_s + "</td>"
         end
      res += "</tr>"
     end
   res +=  "</tbody></table>"
  return res
  end
end
