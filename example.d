#!/usr/bin/env rdmd

import dashcheck;
import std.stdio;

bool isEven(int i) {
	return i % 2 == 0;
}

void main(string[] args) {
	forAll!isEven(&genInt);
}