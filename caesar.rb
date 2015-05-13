def caesar_cipher(str, num)
    str1=str.split("").map {|c| convert(c,num)}
    str1.join("")
end
    
def convert(c, num)
    digit=c.ord
    width=("z".ord)-("a".ord)+1
    if (digit>=97 && digit<= 122)
        digit=digit+num
        digit=(digit-97)%width+97
    elsif (digit>=65 && digit<= 90)
        digit=digit+num
        digit=(digit-65)%width+65
    end
    
    digit.chr
end

caesar_cipher("What a string!", 5)