/*Abstract Class Example
 * Created By :   Prashant Bhardwaj
 * Created Date : 09-Feb-2022
*/
public abstract class AbstractClassExample {
 
    protected Integer test1;
    public Integer test2;
    
    public Integer getTest1(){
        return this.test1;
    }
 
    public AbstractClassExample() {}
 
    public AbstractClassExample(Integer test1, Integer test2) {
       this.test1 = test1+1;
       this.test2 = test2+2;
    }     
 
    public virtual String myVirtualMethod() {
       return '<<virtual method from abstract class>>\n';
    }
 
    private String myPrivateMethod() {
       return '<<private method from abstract class>>\n';
    }
 
    protected String myProtectedMethod() {
       return '<<protected method from abstract class>>\n';
    }
 
    public String myPublicMethod() {
       return '<<public method from abstract class>>\n';
    }
}