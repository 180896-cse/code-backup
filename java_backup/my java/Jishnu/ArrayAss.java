class ArrayAss {
    public void convert(int a[],int n) {
        int b[]=new int[n];
        int t=0,flag=0,k=n/2,j=1;
        for(int i=0;i<n-1;i++)
        { for(int p=i+1;p<n;p++)
            { if(a[i]<a[p])
                { t=a[i];
                  a[i]=a[p];
                  a[p]=t; }
                }
            }
      for(int i=0;i<n;i++)
      {
          flag=0;
          if(flag==0)
          { k=k-j;
            b[k]=a[i];
            System.out.print(b[k]);
            flag=1;
        }
        if(i%2==0) 
        j=j+2;
        if(flag==1)
        { k=k+j;
          b[k]=a[i];
          System.out.print(b[k]);
        }
    }
}
}

          