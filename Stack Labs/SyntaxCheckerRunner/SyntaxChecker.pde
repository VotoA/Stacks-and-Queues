import java.util.Stack;
import java.util.Scanner;
import static java.lang.System.*;

public class SyntaxChecker
{
  private String exp;
  private char[] charArray;
  private Stack<Character> symbols;
  public SyntaxChecker()
  {
    symbols = new Stack<Character>();
  }
  public SyntaxChecker(String s)
  {
    exp = s;
    charArray = s.toCharArray();
    symbols = new Stack<Character>();
  }
  public void setExpression(String s)
  {
    exp = s;
    charArray = s.toCharArray();
  }
  public boolean checkExpression()
  {
    for(char c : charArray)
    {
      if(c=='('||c=='{'||c=='['||c=='<'){
        symbols.push(c);
      } else
      if(c==')'){
        if(symbols.empty() || symbols.pop()!='('){
          return false;
        }
      } else
      if(c=='}'){
        if(symbols.empty() || symbols.pop()!='{'){
          return false;
        }
      } else
      if(c==']'){
        if(symbols.empty() || symbols.pop()!='['){
          return false;
        }
      } else
      if(c=='>'){
        if(symbols.empty() || symbols.pop()!='<'){
          return false;
        }
      }
    }
    if(symbols.empty())
    {
      return true;
    } else {
      return false;
    }
  }
  String toString()
  {
    if(checkExpression()==true)
    {
      return "\n"+exp+" is correct";
    } else {
      return "\n"+exp+" is incorrect";
    }
  }
}
