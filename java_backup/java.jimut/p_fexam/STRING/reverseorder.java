package STRING;


import java.io.*;
class reverseorder
{
public static void main(String[]args)throws IOException
{
InputStreamReader ab=new InputStreamReader(System.in);
BufferedReader cd=new BufferedReader(ab);
int i,a,l,p=0,j;
char ch,ch1;
String s;
System.out.println("Enter any string:");
s=cd.readLine();
l=s.length();
for(i=0;i<=l-1;i++)
{
ch=s.charAt(i);
a=(int)ch;
if(a==32||i==l-1)
{
for(j=i;j>=p;j--)
{
ch1=s.charAt(j);
System.out.print(ch1);
System.out.println();
}
p=i;
}
}
}
}