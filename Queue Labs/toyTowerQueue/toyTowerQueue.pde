import java.util.Stack;
import java.util.Queue;
import java.util.LinkedList;

Queue inBelt;
Tower t;
void setup()
{
 inBelt = new LinkedList<Integer>();
 t = new Tower();
 for(int i = 0; i<99; i++)
 {
   inBelt.add((int)(Math.random()*8)+1);
 }
 for(int i = 0; i<99; i++)
 {
   t.addDisk((int)inBelt.remove());
 }
  println(t);
}
