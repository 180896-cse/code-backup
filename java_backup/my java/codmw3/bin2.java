public class bin2 
{
    void cal(int a)
    {
        int c;
        String b="",d="";
        while(a!=0)
        {
            b+=a%2;
            a=a/2;
        }
        for(c=b.length()-1;c>=0;c--)
        {
            d+=b.charAt(c);
        }
        System.out.println(d);
    }
     public void cal3(int a)
    {
        int c;
        String b="",d="";
        while(a!=0)
        {
            b+=a%16;
            a=a/16;
        }
        for(c=b.length()-1;c>=0;c--)
        {
            d+=b.charAt(c);
        }
        System.out.println(d);
    }
}
            
            