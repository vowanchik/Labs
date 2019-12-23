class ContController < ApplicationController
  def main
  end

  def answer
  	arrStart = params[:arr]
  	arrSplitted = arrStart.split().map{|str| str.to_i}
    @sequences = seq(arrSplitted)
    lengths = @sequences.map do
       |el| el.length
    end
    @max = @sequences[lengths.index(lengths.max)]

    xml = Nokogiri::XML::Builder.new { |table|
      table.body do
          [['Sequences', 'Max'], [@sequences.map{|seq| seq.join(' ')}.join('<br />'), @max.join(' ')]].each { |row|
            table.row do
                  table.c1 row[0]
                  table.c2 row[1]
            end
          }
      end
    }
    render xml: xml
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

end
