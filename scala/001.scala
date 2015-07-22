object Solution001
{
    
    def main(args: Array[String])
    {
        val soln = (1 until 1000).filter(i => i % 3 == 0 || i % 5 == 0)
                                 .sum
        println(soln)
    }
}
