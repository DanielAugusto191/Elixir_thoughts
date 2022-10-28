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

# lambda func
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

IO.puts(50 < :atom)


# Pattern Matching
{1,b,c} = {1, 2, :OK}
# IO.puts(a);
IO.puts(b);
IO.puts(c);
[head | tail] = [1,2,3]

b = 2
# {^b, c} = {3, 5} error: no match of right hand side

# Case
case {"a", 2, 3} do
  {4,5,6} -> "Not Match"
  {"a", x, 3} -> IO.puts("Match and x = #{x}")
  _ -> "Match any value"
end

x = 10
case 10 do
  ^x -> "Wont match"
  _ -> "Will match"
end

case {1, 2, 3} do
    {1, x, 3} when x > 0 -> "Will match"
    _ -> "OK"
end

# hd(1) # Error
# case 1 do
#   x when hd(x) -> "Wont match"
#   x -> "Got #{x}"
# end

f = fn x,y when x+y > 0 -> x + y
  x, y -> x * y
end
IO.puts(f.(-1,2))

cond do
  2 + 2 == 5 ->
    "Not true"
  2 * 2 == 4 ->
    "Will match"
end

k = if true do
  "This works!"
else
  "Not works"
end
k = unless false do
  "This works!!"
end
IO.puts(k)

# Scope
x = 1
if true do
  x = x+1
end
x # 1
IO.puts(true == :true)

list = [a: 0, c:1, b:2]

# Map
%{:a => a} = %{:a => 55, 2 => :b}
a # 55
