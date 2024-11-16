import 'package:flutter_test/flutter_test.dart';
import 'package:mimories/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('MiformViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}