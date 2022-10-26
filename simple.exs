# Hello Worlds
IO.puts("Hello World")

# Types
_ = 1          # integer
_ = 0x1F       # integer
_ = 1.0        # float
_ = true       # boolean
_ = :atom      # atom / symbol
_ = "elixir"   # string
_ = [1, 2, 3]  # list
_ = {1, 2, 3}  # tuple

# Operations
# + soma
# * mult
# / divisao real
# div divisao real
# rem resto

## Notação
# binaria - 0b1010 = 10
# octal - 0o777 = 511
# hex - 0x1F = 31
# float - 1.0 64-bit double precision
# scientific - 1.0e-10

## Round
# Round - mais proximo
# Truct - parte inteira

## Strings
string = (:apple == :apple)
IO.puts("Hello #{string}")
string = "limao"
IO.puts(String.length(string)) # 5
IO.puts(String.upcase(string)) # 5

## Atoms
_ = :apple
IO.puts("Apple: #{:apple == :apple}") # True
IO.puts("Is apple atom? #{is_atom(:apple)}") # True
# Booleans are atoms
IO.puts("are booleans atoms? #{:true == true}") # True
IO.puts("#{is_boolean(:true)}") # True
# Aliases start in upper case and are also atoms
IO.puts("are uppercase atoms? #{is_atom(Limao)}")

## lambda func
add = fn a,b -> a+b end
IO.puts(add.(1,2)) # 3
IO.puts(is_function(add.(1,2))) # True
IO.puts(is_function(add, 2)) # True - check if add expects exactly 2 args.
IO.puts(is_function(add, 1)) # False - check if add expects exactly 1 args.
double = fn a -> add.(a,a) end # Closure
IO.puts(double.(2)) # 4
# Static Scope
x = 42
(fn -> x = 0 end).()
IO.puts(x) # 42

# Linked Lists
x = [1,2,true,3]
y = [4,5,6]
IO.puts(length(x)) # 4
z = ([1,2,3] ++ [5,6,7]) # Concat
IO.inspect z, label: "The list is" # print List, **take care about the space between label and "the list is".
IO.puts(hd(z))# Head
IO.inspect tl(z), label: "The list tail is" # print List, **take care about the space between label and "the list is".
k = [104, 101, 108, 108, 111]
IO.inspect k, label: "letters" # Print 'Hello'
# i 'Hello' informations about 'hello'
# 'hello' != "hello"

# Tuples
x = {:ok, "hello"} # 0 based index
IO.puts(tuple_size(x)) # 2
IO.puts(elem(x, 1)) # hello
x = put_elem(x, 1, "world")
