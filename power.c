
#define exp_v 2.718281

double Exp (int);
double Pow (double, int);
 

double Exp (int x)
{
	double res = 1.0;
	int i = 1;
	for(;i<=x;i++)
	{
		res = res*exp_v;
	}
	return res;
}

double Pow(double x,int y)
{
	int j;
	double sum = 1;
	for(j = 0; j<y;j++)
	{
		sum *= x;
	}	

	return sum;
}
