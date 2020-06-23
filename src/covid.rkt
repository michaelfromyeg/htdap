#lang racket

(require plot)
(require csv-reading)

(define covid-data
  (make-csv-reader-maker
   '((separator-chars            #\|)
     (strip-leading-whitespace?  . #t)
     (strip-trailing-whitespace? . #t))))

(define data
  (csv->list (covid-data (open-input-file "../data/canada-covid19.csv"))))

data