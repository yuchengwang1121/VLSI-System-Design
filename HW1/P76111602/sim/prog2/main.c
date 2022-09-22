int main(void){
    extern int  _test_start;

	extern long long  mul1;
	extern long long  mul2;

	long long mul1_1, mul2_1;

	mul1_1 = mul1 << 32;
	mul1_1 = mul1_1 >> 32;

	mul2_1 = mul2 << 32;
	mul2_1 = mul2_1 >> 32;

	long long product = mul1_1 * mul2_1;

	int low  = product;
	int high = product >> 32;

	(&_test_start)[0] = low;
	(&_test_start)[1] = high;

	return 0;
}