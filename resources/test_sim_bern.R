context("sim_bern_mean")

test_that("simualtion returns a 2x1 dataframe", {

  sim_output = sim_bern_mean(30, .5)

  expect_is(output, "tbl_df")
  expect_equal(ncol(output), 2)
  expect_equal(nrow(output), 1)

})

test_that("simulation gives anticipated results", {

  set.seed(1)
  output = sim_bern_mean(30, .5)

  set.seed(1)
  sample = rbinom(30, 1, .5)

  expect_equal(output$n, length(sample))
  expect_equal(output$samp_avg, mean(sample))

})
