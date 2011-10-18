#!/usr/bin/env rdmd

import dashcheck;
import std.stdio;

void main(string[] args) {
	writeln("Random integer: ", genInt());
	writeln("Random boolean: ", genBool());
	writeln("Random char: ", genChar());

	// ...
}