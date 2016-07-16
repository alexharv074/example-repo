require 'spec_helper'
#require 'prime'

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

    #it "#{file} content should be a prime number" do
    #  expect(content.to_i.prime?).to be true
    #end
  end
end
