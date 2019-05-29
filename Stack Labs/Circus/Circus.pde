import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import java.util.Stack;
import static java.lang.System.*;

void setup()
{
  Stack main = new Stack<String>();
  Stack temp = new Stack<String>();
  int count = 0;
  Scanner file;
  try{
  file = new Scanner(new File("Desktop/VotoA/Stack Labs/Circus/Circus.dat"));
    while(file.hasNextInt())
    {
      count ++;
      main.push("SET "+count);
      int num = file.nextInt();
      for(int i = 0; i<=num; i++){
        if(i%2==0)
        {
          temp.push(file.nextLine());
        } else {
          main.push(file.nextLine());
        }
      }
      while(!temp.empty())
      {
        main.push(temp.pop());
      }
    }
  } catch (Exception FileNotFoundException) {
    out.println("File not found");
  }
  String str = "";
  while(!main.empty())
  {
    str = main.pop()+"\n"+str;
  }
  println(str);
}
