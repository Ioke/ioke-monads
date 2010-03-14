
use("monad")

describe(Monad,
  it("should have tests")
)

describe(Identity,
  describe("monad",
    it("should have tests")

    it("should support a basic usage pattern"
      ; Identity monad {
      ;   x <- 42,
      ;   return(x + 10)
      ;   } should == 52

      ; Identity monad {
      ;   x <- 42,
      ;   y <- 55,
      ;   return(x * y)
      ;   } should == 2310
    )

    it("should work using the Identity monad directly",
      i = Identity monad
      
      i <-(42,
        fn(x,
          i <-(55,
            fn(y,
              i return(x * y))))) should == 2310
    )
  )
)

describe(nil,
  describe("monad",
    it("should have tests")

    it("should work using the nil monad directly",
      i = nil monad
      
      i <-(42,
        fn(x,
          i <-(55,
            fn(y,
              i return(x * y))))) should == 2310

      i <-(42,
        fn(x,
          i <-(nil,
            fn(y,
              i <-(55,
                fn(z,
                  i return(x * y + z))))))) should be nil
    )
  )
)

describe(List,
  describe("monad",
    it("should work using the List monad directly",
      i = List monad
      
      i <-([1,2,3],
        fn(x,
          i <-([5,6,7],
            fn(y,
              i return(x*y))))) should == [5,6,7,10,12,14,15,18,21]
    )
  )
)

describe(State,
  describe("monad",
    it("should have tests")
  )
)

describe(IO,
  describe("monad",
    it("should have tests")
  )
)

describe(Continuation,
  describe("monad",
    it("should have tests")
  )
)


