;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname test1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "gui.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "gui.rkt" "teachpack" "htdp")) #f)))
(define ppi 3.141592654)
(define (area-of-disk r)
  (* ppi (* r r))
)
;; 合约: area-of-ring : number number -> number
;; 用途说明: 计算一个半径为 outer,其中洞的半径为 inner 的环的面积
;; 例子: (area-of-ring 5 3) 的计算结果为 50.24
;; 定义: [函数头部的精化]
(define (area-of-ring outer inner)
(- (area-of-disk outer)
(area-of-disk inner)))
;; 测试:
(area-of-ring 5 3)
;; 预期的值
;; 50.24