function foo(x: int): int {
  if (x < 0) {
    return 0; //Added base case for negative inputs
  } else if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
  echo foo(-5);
}
This corrected version explicitly handles negative input values.  This prevents infinite recursion and eliminates the stack overflow error.