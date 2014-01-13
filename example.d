#!/usr/bin/env rdmd -I~/.d

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
	auto r = s.dup.reverse;
  auto s2 = r.dup.reverse;

	return s == s2;
}

void main(string[] args) {
	forAll!isEven(&genInt);
	forAll!isEven(&genEven);
	forAll!reversible(&genString);
}
