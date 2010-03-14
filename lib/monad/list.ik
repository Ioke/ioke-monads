
ListMonad = Monad mimic
List monad = ListMonad

; Monadic bind
ListMonad cell(:"<-") = method(p, rest,
  p inject([], collected, current, collected + rest call(current))
)

; Monadic return
ListMonad return = method(val, list(val))
