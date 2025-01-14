public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
    String e2 = e.substring(2);
    for (int i = 0; i < e2.length() - 10; i++) {
      String str = e2.substring(i, i + 10);
      double dbl = Double.parseDouble(str);
      
      if (isPrime(dbl)) {
        System.out.println(String.format("Found prime! Prime: %s; website: http://%s.com", str, str));
        System.exit(0);
      }
    }
    System.out.println("haha funny story your code broken");
    System.exit(0);
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
    if (dNum <= 1) return false;
    
    for (double i = 2; i < Math.sqrt(dNum); i++) {
      if (dNum % i == 0) return false;
    }
    
    return true;  
} 
