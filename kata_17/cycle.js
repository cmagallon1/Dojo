function cycle(n) {
  if (n % 2 == 0 || n % 5 == 0) return -1;
  let reminder = (1 * 10) % n
  let counter = 1
  while (reminder != 1) {
    reminder = (reminder * 10) % n
    counter++
  }
  return counter
}
