/*Class Example to extend Abstract Class and implement Interface
 * Created By :   Prashant Bhardwaj
 * Created Date : 09-Feb-2022
*/
public class EmployeeInterfaceCall implements EmployeeInterface{

	/* Menthod defined from interface*/    
    public Double increaseEmployeeSalary(Double currentSalary) {
      return currentSalary * 1.1;
   }       

}