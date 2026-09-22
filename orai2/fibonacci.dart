void main() {
  int db = 0;
  while (db < 100) {
    print(fibonacci(db));
    db++;
  }
}

int fibonacci(int n) {
  if (n == 0 || n == 1) {
    return n;
  }

  return fibonacci(n - 1) + fibonacci(n - 2);
}
