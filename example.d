#!/usr/bin/env rdmd -I~/.d

import dashcheck;
import std.stdio;

bool isEven(int i) {
  return i % 2 == 0;
}

int genEven() {
  const int i = genInt();

  if (i % 2 != 0) {
    return i + 1;
  }
  else {
    return i;
  }
}

bool reversible(string s) {
  const auto r = s.dup.reverse;
  const auto s2 = r.dup.reverse;

  return s == s2;
}

void main(const string[] args) {
  forAll!isEven(&genInt);
  forAll!isEven(&genEven);
  forAll!reversible(&genString);
}
