#!/bin/ruby

def decipher_this(string)
  res=''
  string.scan(/(\d+)([a-zA-Z]*)( )?/){
  |num,str,spc|
  str = str[-1] + str [1...-1] + str[0] if str.size > 1
  res << "#{num.to_i.chr}#{str}#{spc}"
  }
  p res
end

#testing
decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") #A wise old owl lived in an oak
decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp")#The more he saw the less he spoke

