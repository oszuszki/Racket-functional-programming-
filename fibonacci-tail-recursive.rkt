#lang racket


;Készítse el a Fibonacci-sorozatot kiszámító farokrekurzív megoldást!

(define (my-fibo-tail n) ;csomagoló függvény
  (my-fibo-2 1 0 n))

(define (my-fibo-2 m p i)
  (if (= i 0)
      p
      (my-fibo-2 (+ m p) m (- i 1))
      ))
#|
C[(define (my-fibo-2 m p i)
  (if (= i 0)
      p
      (my-fibo-2 (+ m p) m (- i 1))
      ))]
-->
C[(if #t
      p
      (my-fibo-2 (+ m p) m (- i 1))
      ))]
-->
C[(p)]
|#

(my-fibo-tail 1)
(my-fibo-tail 2)
(my-fibo-tail 3)

(define (my-fibo-1 n) ; járdalerakós feladat
  (if (<= n 2)
  n
  (+ (my-fibo-1 (- n 1)) (my-fibo-1 (- n 2))))) 

(displayln "tail rekurzivan 35-re:")
(time(my-fibo-tail 35))
(displayln "rekurzivan 35-re:")
(time(my-fibo-1 34))

