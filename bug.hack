function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}
This code will result in a stack overflow error for large values of x because the recursive calls to foo do not have a base case for all possible inputs.  The base case is only defined for x==0. For negative inputs, the recursion will never end, leading to a stack overflow.