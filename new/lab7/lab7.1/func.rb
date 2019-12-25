# frozen_string_literal: true

def files
  if File.exist? 'G.txt'
    f = File.open('G.txt', 'w')
    f.close
  end
  g = File.open('F.txt', 'w')
  g.close
  i = 0
  loop do
    File.open('F.txt', 'a') do |file|
      string = %w[Aaaaaaa Bbbbbbbb Cccccc]
      file.puts string[i]
      i += 1
    end
    break if i == 3
  end
  File.foreach('F.txt') do |line|
    line = line.reverse
    line += ' '
    line = line.reverse
    File.open('G.txt', 'a') do |file|
      file.puts line
    end
  end
end
