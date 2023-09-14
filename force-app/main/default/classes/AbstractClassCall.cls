public class AbstractClassCall extends AbstractClassExample{
    
    public AbstractClassCall(Integer test1, Integer test2) {
      //You can use abstract class constructor using super. Remember! Abstract class cannot be initialized, 
      //so this is the only scenario when you can use abstract class constructor!
       super(test1, test2);
   }	
 
   public override String myVirtualMethod() {
      System.debug('This is my first commit');
       System.debug('This is my first commit2');
      return '<<Virtual method overridden in child class!>>\n';
   }   
 
   public String invokeMethodFromAbstractClass() {
      String methods = '';
     // methods += myPrivateMethod();//error, private method is not accessible in child class
      methods += myProtectedMethod();
      methods += myPublicMethod();
 
      return methods; //protected method from abstract class public method from abstract class
   } 

}