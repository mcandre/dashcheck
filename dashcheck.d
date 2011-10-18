module dashcheck;

import std.random;

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

// ...