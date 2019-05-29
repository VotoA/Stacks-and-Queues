import java.util.ArrayList;
import static java.lang.System.*;

class IntStack
{
  private ArrayList<Integer> list;
  public IntStack()
  {
    list = new ArrayList<Integer>();
  }
  public void push(int item)
  {
   list.add(item);
  }
  public int pop()
  {
    return list.remove(list.size()-1);
  }
  public boolean isEmpty()
  {
    if(list.size()==0)
    {
      return true;
    } else {
    return false;
    }
  }
  public int peek()
  {
    return list.get(list.size()-1);
  }
  public String toString()
  {
    return list+"";
  }
}
