import java.util.Queue;
import java.util.Stack;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.LinkedList;

public class PalinList
{
  private Queue<String> queue;
  private Stack<String> stack;
  String[] strs;
  public PalinList()
  {
    setList("");
    queue = new LinkedList<String>();
    stack = new Stack<String>();
  }
  public PalinList(String list)
  {
    queue = new LinkedList<String>();
    stack = new Stack<String>();
    strs = list.split(" ");
    for(String s : strs)
    {
      queue.add(s);
      stack.push(s);
    }
  }
  public void setList(String list)
  {
    strs = list.split(" ");
    for(String s : strs)
    {
      queue.add(s);
      stack.push(s);
    }
  }
  public boolean isPalin()
  {
    for(int i = 0; i<queue.size(); i++)
    {
      if(!queue.poll().equals(stack.pop()))
      {
        return false;
      }
    }
    return true;
  }
  String toString()
  {
    if(isPalin())
    {
      return Arrays.toString(strs)+" is a palinlist.";
    } else 
    {
      return Arrays.toString(strs)+" is not a palinlist";
    }
  }
}
