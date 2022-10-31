#^ 4. Operations

# aside of assignments, ruby can also perform various mathematical and logical operations

#$ maths
# most of these should be self explanatory:

#* addition `a + b`
1 + 1

#* subtraction `a - b`
1 - 1

#* multiplication `a * b`
2 * 3

#* exponentiation `a ** b`
2 ** 3

#* division `a / b`
# how many times can `b` fit into `a`
15 / 7

#* modulo `a % b`
# whats the remainder after division `a / b`
15 % 7

#* parenthesis `(a + b) * c`
1 + 2 * 3
(1 + 2) * 3

#~ exercise:
# -> create variables `a` and `b` with some integer values
# -> try doing the mathematical operations with them
# -> try division with two integers
# -> create variable `c`, give it some float value (2.0)
#    and try division with that

#$ logic
# logical operations always return `true` or `false`

#* equals `==`, `!=`
1 == 1 # are the two values equal?
1 != 2 # are the two values different (not equal)?

#* less/greater than `<`, `<=`, `>`, `>=`
1 < 2 # is 1 less than 2?
1 > 2 # is 1 greated than 2?
1 <= 2 # is 1 less than or equal to 2?
1 >= 2 # is 1 greater than or equal to 2?

#* and `&&`
# returns `true` when both sides are `true`
true && true
(1 == 1) && (2 < 1)

A && B
T T => true
T F => false
F T => false
F F => false

#* or `||`
# returns `true` when either side is `true`
true || false
(10 < 2) || (-2 > -3)

A || B
T T => true
T F => true
F T => true
F F => false

#* not `!`
# turns `true` into `false` and vice-versa
!true
!(1 > 2)

#~ exercise:
# -> set `a`, `b` and `c` to values that would make
#    the following operation return `true`
#    a = b = c = 1
#    (((a + b) < 3) && ((4 != (b % c)) || (c != 2) && ((a ** c < 42))) || true)
