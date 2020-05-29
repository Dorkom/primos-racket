#lang racket
(define (divisores n1 n2) (cond [(= n2 1) 1] [(> n2 1) (if (= (remainder n1 n2) 0) (+ 1 (divisores n1 (- n2 1))) (divisores n1 (- n2 1)))])) ;halla numero de divisores
(define (primo num) (if (> (divisores num num) 2) false true))
(primo 7)