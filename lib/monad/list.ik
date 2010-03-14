
List monad = Monad mimic

; Monadic bind
List monad <- = method(p, rest,
  p inject([], collected, current, collected + rest call(current))
)

; Monadic return
List monad return = method(val, list(val))
