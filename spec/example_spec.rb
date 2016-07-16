require 'spec_helper'

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

  end
end
