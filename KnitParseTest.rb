#Row 1 (WS): K3, (k1, p1) three times, k6, (p1, k1) three times, k3

#Row 2: K3, km1, (p1, k1) twice, p1, k2tog, k4, ssk, (p1, k1) twice, p1, km1, k3

#Row 3: K3, (p1, k1) three times, k6, (k1, p1) three times, k3

#Row 4: K3, pm1, (k1, p1) twice, k1, k2tog, k4, ssk, (k1, p1) twice, k1, pm1, k3

# sRow 5: P3, (k1, p1) three times, p6, (p1, k1) three times, p3

#parser - DSL
#interpeter
#Output



class KnitParse
  
  def initialize 
    row [1, 'WS'] , k1 , [k1,p1], three(times), k6, [p1,k1,three(times)], k3
  end

  def row a,b,c,d,e,f,g
    puts b
  end

  def method_missing(meth, *args, &block)
    #puts  meth
    #puts args
    if meth.to_s.match(/k(\d)/)
      puts knit $1
  	elsif meth.to_s.match(/p(\d)/)
      puts purl $1
    end
  end

  def knit(value)
  	"knit #{value}"
  end

  def purl(value)
  	"purl #{value}"
  end
end

KnitParse.new