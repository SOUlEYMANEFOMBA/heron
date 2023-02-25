test_that("calcul de l'aire formule heron", {
  a=3;b=6;c=7
  expect_equal(round(air_triangle(a,b,c),2),8.94)
  x=2;d=3;e=4
  expect_equal(round(air_triangle(x,d,e),2),2.90)
  s=4;f=3;m=4
  expect_equal(round(air_triangle(4 ,3 ,4),2),5.56)

  expect_warning(air_triangle("dd",3,4))
  expect_warning(air_triangle(2,-1,5))
  expect_warning(air_triangle(2,3,0))
})
