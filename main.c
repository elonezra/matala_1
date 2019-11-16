
#include"stdio.h"
#include"myMath.h"

int main ()
{
	double x = 0.0;
	double ans=0.0;
	printf("enter x value: ");
	scanf("%lf", &x);
	//ans = Exp(x);
	ans = add(Exp(x),Pow(x,3));
	ans = sub(ans, 2.0);	
	printf("f(x) = e^x + x^3 - 2 = %lf \n",ans);
	
	ans = add(mul(3,x),mul(2,Pow(x,2)));
	printf("f(x) = 3x + 2x^2 = %lf\n", ans);
	ans = div(mul(4,Pow(x,3)),sub(5,mul(2,x)));
	printf("f(x) = (4x^3)/5 - 2x = %lf\n", ans);
	return 1;
}
