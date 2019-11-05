// Challenge 1
// Write test cases including boundary conditions for given challenges

// Challenge 2
// Josephus Problem
// This classic problem dates back to Roman times. There are 41 soldiers arranged
// in a circle. Every third soldier is to be killed by their captors, continuing
// around the circle until only one soldier remains. He is to be freed. Assuming
// you would like to stay alive, at what position in the circle would you stand?

// Generalize this problem by creating a function that accepts the number of
// soldiers n and the interval at which they are killed i, and returns the
// position of the fortunate survivor.
int josephusProblem(int soldiers, int increment) {
  List soldiersList = [];
  for (int i = 1; i <= soldiers; i++) {
    soldiersList.add(i);
  }
  print(soldiersList);
  int i = -1;
  while (soldiersList.length > 1) {
    i += increment;
    if (i < soldiersList.length - 1) {
      soldiersList.removeAt(i);
      print(soldiersList);
    }
    if (i == soldiersList.length - 1) {
      i = -1;
    }
    if (i > soldiersList.length - 1) {
      int temp = i - (soldiersList.length - 1);
      i = -1;
      i += temp;
      soldiersList.removeAt(i);
      print(soldiersList);
    }
  }
}

// Challenge 3
// Movie Theater Seating
// A group of n friends are going to see a movie. They would like to find a spot
// where they can sit next to each other in the same row. A movie theater's seat
// layout can be represented as a 2-D matrix, where 0s represent empty seats and
// 1s represent taken seats.

// Create a function that, given a seat layout and the number of friends n,
// returns the number of available spots for all n friends to sit together.
//
//Examples
//groupSeats([
//  [1, 0, 1, 0, 1, 0, 1],
//  [0, 1, 0, 1, 0, 1, 0],
//  [0, 0, 1, 1, 1, 1, 1],
//  [1, 0, 1, 1, 0, 0, 1],
//  [1, 1, 1, 0, 1, 0, 1],
//  [0, 1, 1, 1, 1, 0, 0]
//    ], 2) ➞ 3
int groupSeats(List<List<int>> seats, int friends) {
  int count = 0;
  for (List row in seats) {
    for (int i = 0; i < row.length - friends + 1; i++) {
      if (checkSeats(row, i, friends)) count++;
      print(row);
      print(count);
    }
  }
  return count;
}

bool checkSeats(List list, int currentIndex, int requiredSeats) {
  for (int i = 0; i < requiredSeats; i++) {
    if (list[currentIndex + i] != 0) return false;
  }
  return true;
}

main() {
  print(groupSeats([
    [1, 0, 0, 0, 0, 0, 1],
    [0, 1, 0, 1, 0, 1, 0],
    [0, 0, 1, 1, 1, 1, 1],
    [1, 0, 1, 1, 0, 0, 1],
    [1, 1, 1, 0, 1, 0, 1],
    [0, 1, 1, 1, 1, 0, 0]
  ], 2));
  josephusProblem(10, 3);
}
