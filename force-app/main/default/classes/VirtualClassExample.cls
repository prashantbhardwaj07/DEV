public virtual class VirtualClassExample {
    
   protected Integer test1;
   public Integer test2;
 
   public VirtualClassExample() {}
 
   public VirtualClassExample(Integer test1, Integer test2) {
       this.test1 = test1;
       this.test2 = test2;
   }
 
   public virtual String myVirtualMethod() {
      return '<<virtual method from virtual class>>\n';
   }
 
   private String myPrivateMethod() {
      return '<<private method from virtual class>>\n';
   }
 
   protected String myProtectedMethod() {
      return '<<protected method from virtual class>>\n';
   }
 
   public String myPublicMethod() {
      return '<<public method from virtual class>>\n';
   }
}