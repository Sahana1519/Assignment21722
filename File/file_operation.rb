require 'to_words'
class FileOperations
    def number_to_words
        files= File.open("test.txt", "r+") if File.exist?("test.txt")
        out = File.open("result.txt", "w+")
        lines = files.readlines
        for i in 0...lines.length
            out.puts lines[i].gsub(/\d+/) { |d| d.to_i.to_words }
        end
    end
end

obj = FileOperations.new
obj.number_to_words