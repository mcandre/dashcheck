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

// ...