#include <iostream>
#include <cassert>
#include <vector>

using std::vector;

int binary_search(const vector<int> &a, int x) {
  int left, right,v=0,q; 
  //write your code here
  if(v==0)
  {
  	left = 0;
  	right = (int)a.size();
  	v++;
  }
  
   q=(int)(left+right)/2;
    if(x==a[q])
    return q;
    if(x>a[q])
    {
     left=q+1;
    return binary_search(a, x);
    }
    if(x<a[q])
    {
    	right=q-1;
    return binary_search(a, x);
    }		
    if(left>right)
    return -1;
    
}

int linear_search(const vector<int> &a, int x) {
  for (size_t i = 0; i < a.size(); ++i) {
    if (a[i] == x) return i;
  }
  return -1;
}

int main() {
  int n;
  std::cin >> n;
  vector<int> a(n);
  for (size_t i = 0; i < a.size(); i++) {
    std::cin >> a[i];
  }
  int m;
  std::cin >> m;
  vector<int> b(m);
  for (int i = 0; i < m; ++i) {
    std::cin >> b[i];
  }
  for (int i = 0; i < m; ++i) {
    //replace with the call to binary_search when implemented
    std::cout << linear_search(a, b[i]) << ' ';
  }
}