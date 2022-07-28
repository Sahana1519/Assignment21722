require 'to_words'

class FileOperations
    def NumberInWordsConversion
        input_file= File.open("test.txt", "r+") if File.exist?("test.txt")
        output_file = File.open("result.txt", "w+")
        lines = input_file.readlines
        for i in 0...lines.length
            output_file.puts lines[i].gsub(/\d+/) { |d| d.to_i.to_words }
        end
        input_file.close()
        output_file.close()
    end
end

obj = FileOperations.new
obj.NumberInWordsConversion