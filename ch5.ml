fun replist n x = if n=0 then [] else x :: replist (n-1) x;

(*** Exercise 5.3 ***)

fun plus i j : int = i+j;
 (* plus I returns fn j => I+j *)
fun cmin a b : real = if a<b then a else b;
 (* cmin A returns fn b => if A<b then A else b *)
fun pair x y = (x,y);
 (* pair X returns fn y => (X,y) *)
fun equals x y = (x = y);
 (* equals X returns fn y => (X = y) *)

(*** Exercise 5.4 ***)

 (* Practical difference between: *)
fun f x y = h(g x) y;
fun f x = h(g x);
 (* I remember this concept from _Learn You a Haskell_.
    Looking it up, I see it's called "point free notation." *)
fun foldl f acc [] = acc
  | foldl f acc (x::xs) = (foldl f (f(acc, x)) xs);
 (* given that function, we can define a function, sum, in
    either of these two ways: *)
fun sum xs = foldl (op +) 0 xs;
val sum = foldl (op +) 0;
