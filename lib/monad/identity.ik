
Identity = Monad mimic
Identity monad = Identity

; Monadic bind
Identity cell(:"<-") = method(p, rest,
  rest call(p)
)

; Monadic return
Identity return = method(val, val)
