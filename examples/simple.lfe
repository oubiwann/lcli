#!/usr/bin/env lfe
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;
;;;; This script shows 1) the default argument/option handling from Erlang
;;;; that is most useful for LFE scripts, 2) the two helper variables
;;;; provided by LFE for getting arguments and script name, and 3) the same
;;;; functionality as provided by the lcli library.
;;;;
;;;; To run the script, ensure that lfe is in your $PATH, then:
;;;;
;;;;   $ ./examples/simple.lfe --greeting "Hello" --greetee "World"
;;;;
(let ((plain-args (init:get_plain_arguments))
      (`(#(script ,script) #(args ,args)) (lcli:get-raw-args)))
  (lfe_io:format "Plain args: ~p~n" `(,plain-args))
  (lfe_io:format "Helper script name: ~p~n" `(,script-name))
  (lfe_io:format "Helper script args: ~p~n" `(,script-args))
  (lfe_io:format "Script name: ~p~n" `(,script))
  (lfe_io:format "Script args: ~p~n" `(,args)))
