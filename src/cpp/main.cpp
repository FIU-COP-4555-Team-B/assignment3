#include <chrono>
#include <cstdio>
#include <functional>
#include <string>
#include <thread>

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
