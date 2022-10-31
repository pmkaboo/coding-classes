#^ Ruby style

# https://rubystyle.guide/

# you dont need to read the whole page, there is a lot
# of things, and also a lot of things we didnt even
# cover yet, but the parts we did cover contain some useful
# information for further study.
# below i will list the sections you should be able to
# understand after going through the 20 lessons.

# the most useful information about styling ruby code can be
# found in sections `introduction`, `guiding principles`
# and `a note about consistency`

# other important sections:
# note that you dont need to memorize any of this,
# just spend some time reading through it,
# and then as youll be writing code, maybe youll remember
# that youve seen some suggestions on how it
# could be written better, and then you can consult
# the ruby style guide about your specific thing

# layout:
# https://rubystyle.guide/#tabs-or-spaces
# https://rubystyle.guide/#no-semicolon
# https://rubystyle.guide/#one-expression-per-line
# https://rubystyle.guide/#spaces-operators
# https://rubystyle.guide/#spaces-braces
# https://rubystyle.guide/#no-space-bang
# https://rubystyle.guide/#empty-lines-between-methods
# https://rubystyle.guide/#two-or-more-empty-lines
# https://rubystyle.guide/#no-trailing-params-comma
# https://rubystyle.guide/#spaces-around-equals
# https://rubystyle.guide/#parens-no-spaces
# https://rubystyle.guide/#align-multiline-arrays

# naming:
# https://rubystyle.guide/#english-identifiers
# https://rubystyle.guide/#snake-case-symbols-methods-vars

# flow of control:
# https://rubystyle.guide/#no-for-loops
# https://rubystyle.guide/#no-then
# https://rubystyle.guide/#same-line-condition
# https://rubystyle.guide/#ternary-operator
# https://rubystyle.guide/#no-nested-ternary
# https://rubystyle.guide/#no-semicolon-ifs
# https://rubystyle.guide/#use-if-case-returns
# https://rubystyle.guide/#no-bang-bang
# https://rubystyle.guide/#and-or-flow
# https://rubystyle.guide/#no-multiline-ternary
# https://rubystyle.guide/#if-as-a-modifier
# https://rubystyle.guide/#no-multiline-if-modifiers
# https://rubystyle.guide/#unless-for-negatives
# https://rubystyle.guide/#no-else-with-unless
# https://rubystyle.guide/#no-parens-around-condition
# https://rubystyle.guide/#no-explicit-return
# https://rubystyle.guide/#safe-assignment-in-condition
# https://rubystyle.guide/#no-nested-conditionals

# assignment:
# https://rubystyle.guide/#parallel-assignment
# https://rubystyle.guide/#self-assignment
# https://rubystyle.guide/#double-pipe-for-uninit

# blocks, procs, lambdas:
# https://rubystyle.guide/#single-action-blocks
# https://rubystyle.guide/#single-line-blocks
# https://rubystyle.guide/#block-argument
# https://rubystyle.guide/#no-trailing-parameters-comma
# https://rubystyle.guide/#no-nested-methods
# https://rubystyle.guide/#lambda-multi-line
# https://rubystyle.guide/#stabby-lambda-with-args
# https://rubystyle.guide/#stabby-lambda-no-args
# https://rubystyle.guide/#proc
# https://rubystyle.guide/#proc-call

# methods:
# https://rubystyle.guide/#no-single-line-methods
# https://rubystyle.guide/#method-parens
# https://rubystyle.guide/#method-call-parentheses
# https://rubystyle.guide/#optional-arguments

# collections:
# https://rubystyle.guide/#literal-array-hash
# https://rubystyle.guide/#percent-w
# https://rubystyle.guide/#percent-i
# https://rubystyle.guide/#no-trailing-array-commas
# https://rubystyle.guide/#no-gappy-arrays
# https://rubystyle.guide/#symbols-as-keys
# https://rubystyle.guide/#hash-literals
# https://rubystyle.guide/#no-mixed-hash-syntaxes
# https://rubystyle.guide/#count-vs-size

# numbers:
# https://rubystyle.guide/#underscores-in-numerics
# https://rubystyle.guide/#random-numbers
# https://rubystyle.guide/#float-division

# strings:
# https://rubystyle.guide/#string-interpolation
# https://rubystyle.guide/#consistent-string-literals
# https://rubystyle.guide/#no-to-s
# https://rubystyle.guide/#concat-strings
# https://rubystyle.guide/#string-chars
# https://rubystyle.guide/#heredoc-long-strings

# misc:
# https://rubystyle.guide/#no-non-nil-checks
# https://rubystyle.guide/#ranges-or-between
# https://rubystyle.guide/#predicate-methods
# https://rubystyle.guide/#three-is-the-number-thou-shalt-count
# https://rubystyle.guide/#functional-code

#* rubocop

# rubocop is another reason why you dont need
# to memorize any of this, as it can check your
# file for you and alert you when you break any
# of the 'rules'

# to use rubocop, youll need to install it,
# in terminal run: `gem install rubocop`

# and then just run it with the file you want to check,
# in terminal: `rubocop my_file.rb`

# if youre using vscode, it also has an extension
# called `ruby-rubocop`, which will run your code
# through rubocop whenever you save your file
# and highlight problems directly in the editor.
# it should work right out of the box, but if youre
# having problems reach out at any time.
