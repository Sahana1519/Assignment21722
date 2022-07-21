
class FileOperations
    def numbertowords
        set1 = ["","one","two","three","four","five","six","seven",
         "eight","nine","ten","eleven","twelve","thirteen",
         "fourteen","fifteen","sixteen","seventeen","eighteen",
         "nineteen"]

        set2 = ["","","twenty","thirty","forty","fifty","sixty",
         "seventy","eighty","ninety"]
        f= File.open("test.txt", "r+") if File.exist?("test.txt")
        out = File.open("result.txt", "w+")
        lines = f.readlines
         for i in 0...lines.length
           
            number = lines[i].to_i
            thousands = number / 1000
            hundreds = ((number%1000) / 100)
            tens = ((number % 100) / 10)
            ones = number % 10
            string = ""
            string += set1[thousands] + " thousand " if thousands != 0 if thousands > 0
            string += set1[hundreds] + " hundred" if hundreds != 0
            string += set2[tens]
            string = string + " " + set1[ones] if ones != 0    
            string << 'zero' if number == 0    
             out.puts string
        end
        puts "\n\n"
        puts File.read("result.txt")
    end
end

obj = FileOperations.new
obj.numbertowords