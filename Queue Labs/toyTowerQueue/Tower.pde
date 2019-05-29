import java.util.Stack;
import java.util.Queue;
import java.util.LinkedList;

class Tower
{
 String output;
 Stack<Integer> main;
 Stack<Integer> temp;
 Tower()
 {
   main = new Stack<Integer>();
   temp = new Stack<Integer>();
   output = "";
 }
 void addDisk(int disk)
 {
   while(!main.empty() && (int)main.peek() < disk)
   {
     temp.push(main.pop());
   }
   main.push(disk);
   while(!temp.empty())
   {
     main.push(temp.pop());
   }
   if(main.size()==9)
   {
     output+="\n"+main;
     main.clear();
   }
 }
 String toString()
 {
   return output;
 }
}
