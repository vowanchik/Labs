class Rec < ApplicationRecord

  validates :seq, uniqueness: true
  validates :res, presence: true

  def set(arr)
    self.seq = arr
    seq = arr
    arrSplitted = seq.split().map{|str| str.to_i}
    sequences = seqs(arrSplitted)
    lengths = sequences.map do
       |el| el.length
    end
    max = sequences[lengths.index(lengths.max)]

    self.result = [['Sequences', 'Max'], [sequences.map{|s| s.join(' ')}.join("\n"), max.join(' ')]]
  end


   def result = (obj)
      self.res = obj.to_s
   end

   def result
     JSON.parse(self.res)
   end

   
  private
  def seqs(arr)
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
