import java.util.Stack;
import java.util.Scanner;
import static java.lang.System.*;

class StackTest
{
  private Stack<String> stack;
  public StackTest()
  {
    stack = new Stack<String>();
    setStack("");
  }
  public StackTest(String line)
  {
    stack = new Stack<String>();
    Scanner scan = new Scanner(line);
    while(scan.hasNext())
    {
      stack.push(scan.next());
    }
    scan.close();
  }
  public void setStack(String line)
  {
    Scanner scan = new Scanner(line);
    while(scan.hasNext())
    {
      stack.push(scan.next());
    }
    scan.close();
  }
  public void popEmAll()
  {
    while(!stack.empty())
    {
      print(stack.pop()+" ");
    }
  }
  String toString()
  {
    println(stack);
    println("\npopping all items from the stack\n");
    popEmAll();
    return "\n";
  }
}
