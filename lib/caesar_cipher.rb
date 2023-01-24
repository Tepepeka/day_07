=begin 
Implement a caesar cipher that takes in a string and the shift factor and then outp the modified string:

  > caesar_cipher("What a string!", 5)
  => "Bmfy f xywnsl!"

Quick Tips:
You will need to remember how to convert a string into a number.
Don’t forget to wrap from z to a.
Don’t forget to keep the same case.
----> voir a quoi ca correspond chars / fetch / rotate / merge
=end


def caesar(string, key)
  new_string = []
  #if string.class != String
    #puts "Enter a string plz!"
  #else
    modify_string = string.chars.map{|letter| letter.ord}
    modify_string.each do |x|
      if (x >= "a".ord && x <= "z".ord)
        number = x + key         
          if number > "z".ord #122
            new_string << ((number - 1 - "z".ord) + "a".ord).chr   
          elsif number < "a".ord #97               
            new_string << ("z".ord - ("a".ord - 1 - number)).chr
          else
            new_string << number.chr
          end
      elsif (x >= "A".ord && x <= "Z".ord)
        number = x + key
          if number > "Z".ord #122
            new_string << ((number - 1 - "Z".ord) + "A".ord).chr
          elsif number < "A".ord #97               
            new_string << ("Z".ord - ("A".ord - 1 - number)).chr
          else
            new_string << number.chr
          end
      else
        new_string << x.chr
      end  
    end
    return new_string.join()
  #end
end


def encrypt(text, key)
  alpha_maj = ("A".."Z").to_a #Uses the range to create the alpha_maj letters and converts it to an array
  alpha_min = ("a".."z").to_a

  #This method handles the encryption of the text
  encrypted = "" #This is the variable which will hold the encrypted text
    text.split("").to_a.each do |x| #Converts the text into an array an iterate over each index
      if alpha_maj.include? x #We then check if the current variable is included in the alpha_maj array
        encrypted += alpha_maj[ (alpha_maj.index(x) + key) % 26] #We then find it's index and add the key to it
      elsif alpha_min.include? x
        encrypted += alpha_min[ (alpha_min.index(x) + key) % 26]
      else
        encrypted += x
      end
    end
    return encrypted
end


def decrypt(text,key)
  alpha_maj = ("A".."Z").to_a #Uses the range to create the alpha_maj letters and converts it to an array
  alpha_min = ("a".."z").to_a

  #This method is responsible for decrypting the encrypted text
  decrypted = "" #This variable will hold the decrypted text
  text.split("").to_a.each do |x|
    if alpha_maj.include? x
      decrypted += alpha_maj[ (alpha_maj.index(x) - key) % 26]
    elsif alpha_min.include? x
      decrypted += alpha_min[ (alpha_min.index(x) - key) % 26]
    else
      decrypted += x
    end
  end
  return decrypted
end