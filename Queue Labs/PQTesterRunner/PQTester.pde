import java.util.Queue;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.PriorityQueue;

public class PQTester
{
  private Queue<String> pQueue;
  public PQTester()
  {
    pQueue = new PriorityQueue<String>();
  }
  public PQTester(String list)
  {
    pQueue = new PriorityQueue<String>();
    String[] strs = list.split(" ");
    for(String s : strs)
    {
      pQueue.add(s);
    }
  }
  public void setPQ(String list)
  {
    String[] strs = list.split(" ");
    for(String s : strs)
    {
      pQueue.add(s);
    }
  }
  public String getMin()
  {
    return "getMin() - "+pQueue.peek();
  }
  public String getNaturalOrder()
  {
    String output="getNaturalOutput() -";
    int num=pQueue.size();
    for(int i = 0; i<num; i++)
    {
      output+=" "+pQueue.remove();
    }
    return output;    
  }
  String toString()
  {
    return "toString() - "+pQueue;
  }
}
