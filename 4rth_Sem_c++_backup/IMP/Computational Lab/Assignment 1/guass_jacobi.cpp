/*
Solve linear simultaneous equations using guass Jacobi  Method
*/

#include <iostream>
using namespace std;
class Guass_Jacobi
{
   public:
	void guass_jacobi(float a[10][10], float b[10], float x[10], int n);
	void display(float x[10], int n);
};

void Guass_Jacobi :: guass_jacobi(float a[10][10], float b[10], float x[10], int n)
{
   float xg[10];
   float s;
   int i, j, itr, flag;
   float eps[10];
//To initialize xg[] to '0'
   for(i = 0; i < n; i++)
	xg[i] = 0;
   itr = 0;
   flag = 1;
//Guass Jacobi iteration starts
	while(flag == 1)
	{
		flag = 0;
		itr = itr + 1;
		for(i = 0; i < n; i++)
		{
			s = 0;
			for(j = 0; j < n; j++)
				if(  i != j)
					s = s + a[i][j] * xg[j];
			x[i] = (b[i] - s) / a[i][i];
			eps[i] = x[i] - xg[i];
			if(eps[i] < 0)
				eps[i] = -eps[i];
		}
		for(i = 0; i < n; i++)
			xg[i] = x[i];
		for(i = 0; i < n; i++)
			if(eps[i] > 1e-06)
			{
				flag = 1;
				break;
			}
	}
   cout << endl << "Number of iterations taken: " << itr << endl;
}

void Guass_Jacobi :: display(float x[], int n)
{
	int i;
	for(i = 0; i < n; i++)
		cout << "Root[" << i << "] = " << x[i] << endl;
}

int main()
{
	float a[10][10], b[10], x[10];
	int i, j, n;
	system("clear");
	cout << endl << "Enter Number of Equations(1-10): ";
	cin >> n;
	cout << endl << "Enter Co-eficients of your Equations--->\n";
	for(i = 0; i < n; i++)
	{
		for(j = 0; j < n; j++)
		{
			cout << "a[" << i << "][" << j << "] = ";
			cin >> a[i][j];
		}
		cout << "b[" << i << "] = ";
		cin >> b[i];
	}
	Guass_Jacobi GJ;
	GJ.guass_jacobi(a, b, x, n);
	GJ.display(x, n);
	return 0;
}
