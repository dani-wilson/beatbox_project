require 'pry'

class Beatbox

    attr_reader     :list


    def initialize
        @list = LinkedList.new
        @defined_list = ["deep", "doo", "ditt", "wop", "shu", "shi", "tee", "dee", "boop", "la", "na", "shwop", "mm", "blop", "bop", "woo", "hoo", "wee"]

    end


    def append(data)
        data.split(" ").each do |data_string|
            if @defined_list.include?(data_string)
            @list.append(data_string)
        end
    end
        return data
    end

    def prepend(data)
        data.split(" ").each do |data_string|
            if @defined_list.include?(data_string)
            @list.prepend(data_string)
        end
    end
        return data
    end


    def play  
        `say -r 174 "#{list.to_string}"`
    end


    def all
        @list.to_string
    end


end