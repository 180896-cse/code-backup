package assignment;
import java.io.*;
class Emirp
{
int n,rev,f;
public Emirp(int nn)
{
n=nn;
rev=0;
f=2;
}
int isprime(int x)
{
if(f<=2)
{
if(x%f==0)
{
return 0;
}
f++;
return (isprime(x));
}
return 1;
}
void isEmirp()
{
int t=n,d,a,b;
while(t>0)
{
d=t%10;
rev=rev*10+d;
t=t/10;
}
f=2;
a=isprime(n);
f=2;
b=isprime(rev);
if(a==1 && b==1)
{
System.out.println(n+" is an Emirp number");
}
else
{
System.out.println(n+" is not an Emirp number");
}
}
public static void main(String args[])throws IOException
{
int num;
BufferedReader br=new BufferedReader (new InputStreamReader(System.in));
System.out.println("ENTER NO.");
num=Integer.parseInt(br.readLine());
Emirp ob=new Emirp(num);
ob.isEmirp();
}
}
