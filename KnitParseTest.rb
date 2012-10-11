class KnitParse
  
  def initialize 
    row [1, 'WS'] , k1 , [k1,p1,three(times)], k6, [p1,k1,three(times)], k3
  end

  def row a,b,c,d,e,f
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