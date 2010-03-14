
nil monad = Monad mimic

; Monadic bind
nil monad <- = method(p, rest,
  if(p nil?,
    nil,
    rest call(p))
)

; Monadic return
nil monad return = method(val, val)
