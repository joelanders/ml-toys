datatype person = King
                | Peer of string*string*int
                | Knight of string
                | Peasant of string;

(*** Exercise 4.1 ***)

fun rank (King)      = 4
  | rank (Peer _)    = 3
  | rank (Knight _)  = 2
  | rank (Peasant _) = 1;

fun superior (a, b) = rank(a) > rank(b);

(*** Exercise 4.3 ***)

datatype shape = Triangle of real*real*real
               | Rectangle of real*real
               | Line of real
               | Circle of real;

exception Undefined;

fun area (Triangle(a, b, c)) =
           let val p = (a + b + c) / 2.0
           in Math.sqrt(p*(p-a)*(p-b)*(p-c)) end
  | area (Rectangle(w, h)) = w * h
  | area (Line _) = raise Undefined
  | area (Circle(r)) = Math.pi * r * r;

(*** Exercise 4.5 ***)

fun conj (true, true) = true
  | conj _ = false;

fun disj (true, _) = true
  | disj (_, true) = true
  | disj _ = false;
