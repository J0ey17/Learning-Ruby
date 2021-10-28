def isFib(n)
Math.sqrt(5*n**2+4) % 1 == 0 || Math.sqrt(5*n**2-4) % 1==0
end

def distFibDiv(n)
  res=[]
  temp = Math.sqrt(n).round
  (1..temp).each { |i| if n % i == 0 then if isFib(i) then res << i end; if isFib(n/i) then res << n/i end; end }
  res.uniq.sort
end

def productFib(prod)
  temp=distFibDiv(prod)
  if temp[-1]*temp[-2] == prod
    if isFib(temp[-1]+temp[-2])
      return [temp[-2],temp[-1],true]
    end
  else
    x = []
    x << temp[-1]
    i = ((1 + Math.sqrt(5)) / 2)
    until x.size > 1 && x[-1]*x[-2] > prod
      x << (x[-1]*i).round
    end
    return [x[-2],x[-1],false]
  end
end