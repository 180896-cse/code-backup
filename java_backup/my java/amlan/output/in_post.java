package output;

import java.io.*;
class in_post
{
    BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
    int top,i,j,k,p,p1;
    char stack[]=new char[100];
    String a;
    char b[]=new char[100];
    in_post()
    {
        int top=-1;
    }   

    void input()throws IOException
    {
        System.out.println("Give Expression:");
        a=br.readLine();
        k=0;
        for(i=0;i<a.length();i++)
        {
            if((int)a.charAt(i)>=65 && (int)a.charAt(i)<=90)
                b[k++]=a.charAt(i);
            else
            if((int)a.charAt(i)>=48 && (int)a.charAt(i)<=57)
                b[k++]=a.charAt(i);
            else
            if(a.charAt(i)=='(')
            {
                push(a.charAt(i));
            }
            else
                push(a.charAt(i));

        }
        //System.out.println(top);
        while(top>=0)
        {
            b[k++]=pop();
            top--;
        }
        k++;
        System.out.println(" The Expression in postfix form ");
        for(int jj=0;jj<k-1;jj++)
            System.out.print(b[jj]);
    }

    void push(char ch)
    {
        p=p1=0;
        if(ch=='(')
        {
            stack[++top]=ch;
        }
        else
        if(ch==')')
        {
            while(stack[top]!='(    ' )
            {
                b[k++]=pop();
                //System.out.println(b[k]);
            }
            top--;
        }
        else
        {
            p=priority(ch);
            //printf("\n dd %d",p);
            if(top>=0)
            {
                p1=priority(stack[top]);
                //printf("\n dd %d",p1);
            }
            if(p>p1)
            {
                //b[k++]=pop();
                stack[++top]=ch;
            }
            else
            {
                b[k++]=pop();
                stack[++top]=ch;
            }
        }
    }

    char pop()
    {
        if(top>=0) 
            return stack[top--];
        else
            return '0';
    }

    int priority(char ch)
    {
        if(ch=='^')
            return 7;
        else
        if(ch=='/')
            return 6;
        else
        if(ch=='*')
            return 5;
        else
        if(ch=='+')
            return 4;
        else
        if(ch=='-')
            return 3;
        else
            return 2;
    }
}
