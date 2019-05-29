import java.util.Scanner;
import static java.lang.System.*;

void setup()
{
  String str = "a b c d e f g h i \n 1 2 3 4 5 6 7 8 9 10 \n # $ % ^ & * ( ) _";
  Scanner scan = new Scanner(str);
  while(scan.hasNextLine())
  {
    StackTest x = new StackTest(scan.nextLine());
    println(x);
  }
}
