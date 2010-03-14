
NilMonad = Monad mimic
nil monad = NilMonad

; Monadic bind
NilMonad cell(:"<-") = method(p, rest,
  if(p nil?,
    nil,
    rest call(p))
)

; Monadic return
NilMonad return = method(val, val)
