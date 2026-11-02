#include <chrono>
#include <cstdio>
#include <functional>
#include <string>
#include <thread>

// here, much like in the Ada example I have a function which takes in x and y
// and mutates them. However these are passed-by-reference, so we modify the
// variables in addOneMult2 on another thread, wait 100ms (to avoid racing with
// the thread's startup time) and print x and y, seeing that they've mutated
// instantly. We then wait until t finishes to print them (which should have no
// effect, save for a cosmic bit flip.)

void addOneMult2(int &x, int &y) {
  x += 1;
  y *= 2;
  std::this_thread::sleep_for(std::chrono::seconds(2));
}

void printxy(const std::string &title, int x, int y) {
  std::printf("%s X: %d Y: %d\n", title.c_str(), x, y);
}

int main() {
  int x = 1, y = 4;
  printxy("Before ", x, y);

  std::thread t(addOneMult2, std::ref(x), std::ref(y));
  std::this_thread::sleep_for(std::chrono::milliseconds(100)); // avoid race
  printxy("During ", x, y);

  t.join();
  printxy("After ", x, y);
}
