import java.io.*;
class factor
{
    public static void main(String args[])throws IOException
    {
        InputStreamReader isr=new InputStreamReader(System.in);
        BufferedReader br=new BufferedReader(isr);
        int a,i;
        System.out.println("Enter a number :");
        a=Integer.parseInt(br.readLine());
        for(i=1;i<=a;i++)
        {
            if(a%i==0)
            System.out.println("factors"+i);
        }
    }
}