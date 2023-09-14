public class VirtualClassCall extends VirtualClassExample{
    public VirtualClassCall(){}
    
    public VirtualClassCall(String test1, String test2) {
      //You can use virtual class constructor using super. 
      super(test1, test2);
   }
 
   public override String myVirtualMethod() {
      return 'Virtual method overridden in child class!';
   }   
 
   public String invokeMethodFromAbstractClass() {
      String methods = '';
      //methods += myPrivateMethod();//error, private method is not accessible in child class
      methods += myProtectedMethod();
      methods += myPublicMethod(); 
      methods += super.myVirtualMethod(); 
      methods += myVirtualMethod();  
      return methods; //protected method from abstract class public method from abstract class
   }

}