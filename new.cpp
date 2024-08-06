#include <iostream>
#include <ql/experimental/math/generalizedhyperbolicdistribution.hpp>

#include "header.hpp"

using namespace QuantLib;
using namespace std;

int
main() {
	Real lambda = LAMBDA;
	Real alpha = ALPHA;
	Real beta = BETA;
	Real delta = DELTA;
	Real mu = MU;

	GeneralizedHyperbolicDistribution pdf(lambda, alpha, beta, delta, mu);

	int i;
	double x;
	for (i = START; i < STOP; i += STEP) {
		x = (double) i / SCALE;
		cout << x << ' ' << pdf(x) << '\n';
	}
}
