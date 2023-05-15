require 'pry'

class Beatbox

    attr_reader     :list

    def initialize
        @list = LinkedList.new
    end

 

    def append(data)
        data.split(" ").each do |data_string|
            @list.append(data_string)
        end
        return data
    end

    def play  
        `say -r 174 "#{list.to_string}"`
    end

end