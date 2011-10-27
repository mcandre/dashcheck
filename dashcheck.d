module dashcheck;

import std.random;
import std.stdio;

int genInt() {
	return uniform(0, 256);
}

bool genBool() {
	return uniform(0, 2) == 0;
}

char genChar() {
	return cast(char) uniform(0, 128);
}

T[] genArray(T)(T function() gen) {
	int len = uniform(0, 100);
	T[] arr = [];

	for(int i = 0; i < len; i++) {
		arr ~= gen();
	}

	return arr;
}

string genString() {
	return genArray(&genChar).idup;
}

// With help from Martin Novak
// https://github.com/dawgfoto/qcheck
void forAll(alias property, generators...) {
	alias TypeTuple!(staticMap!(Unqual, ParameterTypeTuple!Testee)) TP;

	Tuple!TP args;

	foreach(i, g; generators) {
		args[i] = g();
	}

	bool holds = property(args.tupleof);

	if (holds) {
		writeln("+++ OK, passed 100 tests.");
	}
	else {
		writeln("*** Failed!", args);
	}

	// ...
}