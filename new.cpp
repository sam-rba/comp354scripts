#include <iostream>
#include <ql/experimental/math/generalizedhyperbolicdistribution.hpp>

using namespace QuantLib;
using namespace std;

int
main() {
	Real lambda = -0.5;
	Real alpha  =  1;
	Real beta   =  0.5;
	Real delta  =  0.5;
	Real mu     =  0;

	const int start = -200;
	const int stop = 200;
	const int step = 1;
	const int scale = 100;
	int i;
	double x;

	GeneralizedHyperbolicDistribution pdf(lambda, alpha, beta, delta, mu);
	for (i = start; i < stop; i += step) {
		x = (double) i / (double) scale;
		cout << x << ' ' << pdf(x) << '\n';
	}
}
