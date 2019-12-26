require 'test_helper'

class RecTest < ActiveSupport::TestCase
   test "sequences remain unique" do
     seq = new_seq
     rec1 = new_rec(seq)
     rows_count1 = Rec.count
     rec2 = new_rec(seq)
     rows_count2 = Rec.count
     assert(rows_count1 == rows_count2)
   end

   test "different output for different input" do
     assert(new_rec(new_seq).res != new_rec(new_seq).res)
   end

   private
   def new_seq
     Array(1..rand(10)+1).map { |i| rand(10) }.to_s
   end

   test "presence validation: seq" do
      assert(!Rec.new(res: "").save)
   end

   test "presence validation: res" do
      assert(!Rec.new(seq: "").save)
   end

   def new_rec(seq)
     r = Rec.new do |r|
       r.result = seq
     end
     r.save

     r
   end

end
