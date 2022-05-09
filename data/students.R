set.seed(2022)
n = 100
n2 = 40
n3 = 50
tibble(
  profile = "engaged",
  days_in_a_row = rnorm(n, mean = 5) |> round() |> abs(),
  use_days = rnorm(n, mean = 10, sd = 3) |> round()|> abs(),
  finish_late = rnorm(n, mean = 10, sd = 5) |> round() |> abs(),
  start_early = rnorm(n, mean = 3)|> round() |> abs(),
  correct = runif(n, min = 0.5, max = 1),
  mean_time = rnorm(n, mean = 30, sd = 15) |> round(3) |> abs(),
  min_time = rnorm(n, mean = 20, sd = 5) |> round(1) |> abs(),
  max_time = rnorm(n, mean = 120, sd = 20) |> round(1) |> abs(),
  attemps = rnorm(n, mean = 1000, sd = 500) |> round() |> abs()
) |>
  bind_rows(
    tibble(
      profile = "disengaged",
      days_in_a_row = rnorm(n2, mean = 1) |> round() |> abs(),
      use_days = rnorm(n2, mean = 3, sd = 1) |> round()|> abs(),
      finish_late = rnorm(n2, mean = 10, sd = 6) |> round() |> abs(),
      start_early = rnorm(n2, mean = 10, sd = 5)|> round() |> abs(),
      correct = runif(n2, min = 0.25, max = 0.65),
      mean_time = rnorm(n2, mean = 40, sd = 20) |> round(3) |> abs(),
      min_time = rnorm(n2, mean = 30, sd = 10) |> round(1) |> abs(),
      max_time = rnorm(n2, mean = 60, sd = 40) |> round(1) |> abs(),
      attemps = rnorm(n2, mean = 100, sd = 50) |> round() |> abs()
    )
  ) |>
  bind_rows(
    tibble(
      profile = "utilitarian",
      days_in_a_row = rnorm(n3, mean = 3) |> round() |> abs(),
      use_days = rnorm(n3, mean = 2, sd = 1) |> round()|> abs(),
      finish_late = rnorm(n3, mean = 2, sd = 1) |> round() |> abs(),
      start_early = rnorm(n3, mean = 3)|> round() |> abs(),
      correct = runif(n3, min = 0.45, max = 0.95),
      mean_time = rnorm(n3, mean = 35, sd = 20) |> round(3) |> abs(),
      min_time = rnorm(n3, mean = 25, sd = 5) |> round(1) |> abs(),
      max_time = rnorm(n3, mean = 90, sd = 40) |> round(1) |> abs(),
      attemps = rnorm(n3, mean = 200, sd = 60) |> round() |> abs()
    )
  ) |> sample_frac(1) -> df_lp
