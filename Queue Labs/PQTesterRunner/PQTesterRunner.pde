import java.util.Scanner;

void setup()
{
  String str = "one two three four five six seven\n1 2 3 4 5 one two three four five\na p h j e f m c i d k l g n o b";
  Scanner scan = new Scanner(str);
  while(scan.hasNextLine())
  {
    PQTester x = new PQTester(scan.nextLine());
    println(x);
    println(x.getMin());
    println(x.getNaturalOrder());
    println("\n");
  }
  scan.close();
}
