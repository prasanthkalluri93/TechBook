public class MathCalculator {
     public static integer sum;
     public  static integer mul;
    private static void add(Integer n1, Integer n2){
        sum= n1+n2;
        
    }
    
    private static void multiply( Integer n1, Integer n2){
        mul=(n1*n2);
       
    }
    private static void printOutput(){
    System.debug('sum :'+sum);
    System.debug('multiply:'+mul);
    }
    
    public static void domath(Integer n1, Integer n2){
        add(n1,n2);
        multiply(n1,n2);
        printoutput();
    }
  
}