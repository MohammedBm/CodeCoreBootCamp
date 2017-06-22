

function exp(base, exponent) {
  if (exponent == 0) {
    return 1;
  }
  if (exponent < 0) {
    return 1 / exp(base, -exponent);
  }
  if (exponent > 0) {
    return base * exp(base, exponent - 1)
  }
}
  console.log(exp(6, 6));
