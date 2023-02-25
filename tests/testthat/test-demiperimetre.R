test_that("demi perimetre", {
  a=1;b=1;c=1
  expect_equal(demi_perimetre(a,b,c),1.5)
  x=2;d=3;e=4
  expect_equal(demi_perimetre(x,d,e),4.5)
})
