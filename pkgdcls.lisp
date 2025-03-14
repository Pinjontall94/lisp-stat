;;; -*- Mode: LISP; Base: 10; Syntax: ANSI-Common-Lisp; Package: ORG.TFEB.CLC-USER -*-
;;; Copyright (c) 2021-2022 by Symbolics Pte. Ltd. All rights reserved.
(in-package :org.tfeb.clc-user)

(defpackage :lisp-stat
  (:use)
  (:extends :cl)
  (:extends/excluding :alexandria
		      #:mean
		      #:variance
		      #:median
		      #:flatten
		      #:standard-deviation)
  (:extends :alexandria+)
  (:extends :array-operations)
  (:extends :data-frame)
  (:extends :dfio)
  (:extends/excluding :distributions
		      #:variance
		      #:mean
		      #:quantile)
  (:extends :num-utils.arithmetic)
  (:extends :num-utils.elementwise)
  (:extends :num-utils.utilities)
  (:extends :num-utils.print-matrix)
  (:extends :select)
  (:extends :statistics-1)

  (:export #:variables
           #:def
	   #:undef-var
           #:savevar
	   #:load-tutorial-data))

(defpackage :ls-user
  (:use)
  (:extends :cl)
  (:extends :lisp-stat))

