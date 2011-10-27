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

void main(string[] args) {
	forAll!isEven(&genInt);
	forAll!isEven(&genEven);
}