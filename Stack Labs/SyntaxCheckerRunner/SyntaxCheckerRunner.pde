import java.util.Scanner;
import static java.lang.System.*;

void setup()
{
  String str = "(abc(*def) \n [{}] \n [ \n [{<()>}] \n {<html[value=4]*(12)>{$x}} \n [one]<two>{three}(four) \n car(cdr(a)(b))) \n car(cdr(a)(b))";
  Scanner scan = new Scanner(str);
  while(scan.hasNextLine())
  {
    SyntaxChecker x = new SyntaxChecker(scan.nextLine());
    println(x);
  }
  scan.close();
}
