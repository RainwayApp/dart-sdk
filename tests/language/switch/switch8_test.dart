// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Regression test for dart2js that used to not generate code for
// compile-time constants only seen in case expressions.

class A {
  const A();
}

main() {
  switch (<dynamic>[null][0]) {
    case const A():
      throw 'Test failed';
  }
}
