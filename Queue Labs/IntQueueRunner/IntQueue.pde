import java.util.ArrayList;
import static java.lang.System.*;

public class IntQueue
{
  private ArrayList<Integer> list;
  public IntQueue()
  {
    list = new ArrayList<Integer>();
  }
  public void add(int item)
  {
    list.add(item);
  }
  public int remove()
  {
    return list.remove(0);
  }
  public boolean isEmpty()
  {
    if(list.size() == 0)
    {
      return true;
    }
    return false;
  }
  public int peek()
  {
    return list.get(0);
  }
  public String toString()
  {
    return list+"";
  }
}
