
Monad = Origin mimic



Identity = Monad mimic
Identity monad = Identity

; Monadic bind
Identity cell(:"<-") = method(p, rest,
  rest call(p)
)

; Monadic return
Identity return = method(val, val)



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



State = Origin mimic
Continuation = Origin mimic
