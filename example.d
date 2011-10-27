#!/usr/bin/env rdmd

import dashcheck;
import std.stdio;

bool isEven(int i) {
	return i % 2 == 0;
}

int genEven() {
	int i = genInt();

	if (i % 2 != 0) {
		i++;
	}

	return i;
}

bool reversible(string s) {
	string r = s.idup.reverse;
	string s2 = r.idup.reverse;

	return s == s2;
}

void main(string[] args) {
	forAll!isEven(&genInt);
	forAll!isEven(&genEven);
	forAll!reversible(&genString);
}