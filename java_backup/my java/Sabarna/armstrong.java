
class armstrong
{
public static void main(String args[])
{
int i,j,s,k;
for(i=100;i<=999;i++)
{
j=i;
s=0;
while(j>0)
{
k=j%10;
s=s+(k*k*k);
j=j/10;
}
if(i==s)
System.out.println("Armstrong no"+i);
}
}
}



