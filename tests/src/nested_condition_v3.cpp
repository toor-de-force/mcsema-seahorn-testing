// Copyright 2019 Carnegie Mellon University.  See LICENSE file for terms.

#include "test.hpp"

int main() {
  path_start();
  int n = INT_RAND;
  volatile int x = n; // volatile to prevent optimization of nongoal

  if (n >= 1) {
    if (n >= 10) {
      if (n >= 50) {
        if (x < 40) {
          path_nongoal();
        }
        if (n >= 75) {
          if (n > 100) {
            n++;
          }
        }
      }
    }
  }
  path_goal();
}
