import 'package:http/testing.dart';
import 'package:test/test.dart';

import 'main.dart';

main() {
//  test('josephus problem', () {
//    expect(josephusProblem(10, 3), 4);
//  });

  test('group seats ', () {
    expect(
        groupSeats([
          [1, 0, 1, 0, 1, 0, 1],
          [0, 1, 0, 1, 0, 1, 0],
          [0, 0, 1, 1, 1, 1, 1],
          [1, 0, 1, 1, 0, 0, 1],
          [1, 1, 1, 0, 1, 0, 1],
          [0, 1, 1, 1, 1, 0, 0]
        ], 2),
        3);
  });
}
