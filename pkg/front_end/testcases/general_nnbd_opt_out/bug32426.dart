// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart=2.6

abstract class I {
  void call();
}

class C implements I {
  void call([int x]) {}
}

main() {
  I i = new C();
  void Function([int]) f = i;
}
