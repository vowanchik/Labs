# frozen_string_literal: true

class ContController < ApplicationController
  def main; end

  def answer
    arrStart = params[:arr]
    arrSplitted = arrStart.split.map(&:to_i)
    @sequences = seq(arrSplitted)
    lengths = @sequences.map(&:length)
    @max = @sequences[lengths.index(lengths.max)]
    end

  def seq(arr)
    arrM = arr.unshift(arr[0] + 1)
    arrM << arr[-1]
    map = []
    arrM.each_index do |i|
      map.push(i - 1) if (i > 0) && (arrM[i - 1] >= arrM[i])
    end
    sequences = []
    map.each_index do |i|
      sequences << arr[map[i - 1] + 1..map[i]] if map[i] >= map[i - 1]
    end
    sequences
  end
end
