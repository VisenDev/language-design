
;; Variable declaration
(let count:int 10)
(let initial:char #\b)
(let name:string "bob")
(let eligible:bool true)

;; inferred types
(let num 1.0) ;; inferred num as float

;; Pure Function Definition
(defun double:int (number:int)
  (* number 2))

;; Impure Function Definition (allows side effects)
(defprocedure sayhello:void (name:string)
  (print "Hello, " name))

;; Structs
(defstruct vector2

  ;; fields
  (defield x:int 0)
  (defield y:int 0)

  ;; struct functions/procedures that can be called with dot syntax
  (defun add:vector2 (self:vector2 other:vector2)
    (make-vector2 .x (+ self.x other.x)
                  .y (+ self.y other.y))))

(defstruct color
  (field r:byte 0)
  (field g:byte 0)
  (field b:byte 0))

(defenum colors
  (red (make-color .r 255 .g 0 .b 0))
  (green (make-color .r 0 .g 255 .b 0)))

(defenum states
  success
  failure
  partial-success)


;; prototypes
