import java.util.Scanner;

void setup()
{
  String str = "one two three two one\n1 2 3 4 5 one two three four five\na b c d e f g x y z g f h\nracecar is racecar\n1 2 3 a b c c b a 3 2 1\nchicken is a chicken";
  Scanner scan = new Scanner(str);
  while(scan.hasNextLine())
  {
    PalinList x = new PalinList(scan.nextLine());
    println(x);
  }
  scan.close();
}
