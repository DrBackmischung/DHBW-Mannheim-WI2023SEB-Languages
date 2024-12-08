object Functions extends App {
  def square(x: Int): Int = x * x

  def squareOfSum(a: Int, b: Int): Int = square(a + b)

  println("Square of sum: " + squareOfSum(3, 4))
}
