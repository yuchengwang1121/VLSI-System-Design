int gcd(int m, int n) {		//the GCD function
	int r;
	while(n != 0) {			//if quotient !=0
		r = m % n;
		m = n;
		n = r;
	}
	return m;				//return remainder
}

int main(void)
{
	extern int div1;
	extern int div2;
	extern int _test_start;

	int result = gcd(div1, div2);
	(&_test_start)[0] = result;

	return 0;
}
