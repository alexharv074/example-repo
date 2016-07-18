require 'spec_helper'
require 'prime'

def is_perfect_square?(pos_number)
  Math.sqrt(pos_number).to_i == Math.sqrt(pos_number)
end

def fibonacci?(n)
  is_perfect_square?(5 * n**2 + 4) || is_perfect_square?(5 * n**2 - 4)
end

describe 'files' do

  '
    file1
    file2
    file3
    file4
    file5
  '
  .split.each do |file|

    content = File.read(file).chomp

    it "#{file} should have content" do
      expect(content.empty?).to be false
    end

    it "#{file} content should be a number" do
      expect(content).to match /^\d+$/
    end

    it "#{file} content should be between 1 and 20" do
      expect(content.to_i).to be <= 20
      expect(content.to_i).to be >= 1
    end

    it "#{file} content should be a prime number" do
      expect(content.to_i.prime?).to be true
    end

    it "#{file} content should be a Fibonacci number" do
      expect(fibonacci?(content.to_i)).to be true
    end
  end
end
