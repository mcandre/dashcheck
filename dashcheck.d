module dashcheck;

import std.traits;
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

T[] genArray(T)(const T function() gen) {
    const int len = uniform(0, 100);
    T[] arr = [];

    for(int i = 0; i < len; i++) {
        arr ~= gen();
    }

    return arr;
}

string genString() {
    return genArray(&genChar).idup;
}

bool forAll(alias property, Generators...)(const Generators gs) {
    alias ParameterTypeTuple!property TP;

    TP args;

    foreach (i; 0 .. 99) {
        foreach (j, g; gs) {
            args[j] = g();
        }

        if (!property(args)) {
            writeln("*** Failed!\n", args);
            return false;
        }
    }

    writeln("+++ OK, passed 100 tests.");

    return true;
}
