#include <iostream> // preprocessor directive

int main() // Function main()
{
   double r = 1.8;
   double pi = 3.14159265358979323846;
   double A;
   A = pi*r*r;
   std::cout << A;       // print the literal number `5`
   std::cout << -6.7;    // print the literal number `-6.7`
   std::cout << 'H';     // print the literal character `H`
   std::cout << "Hello"; // print the literal text `Hello`
   return 0;
}
