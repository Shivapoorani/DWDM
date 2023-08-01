data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)
split_into_bins <- function(data, num_bins) {
  bin_width <- (max(data) - min(data)) / num_bins
  bins <- cut(data, breaks = seq(min(data), max(data) + bin_width, by = bin_width), include.lowest = TRUE, labels = FALSE)
  return(bins)
}
smoothing_by_bin_mean <- function(data, num_bins) {
  bins <- split_into_bins(data, num_bins)
  smoothed_data <- tapply(data, bins, mean)
  return(smoothed_data)
}
smoothing_by_bin_median <- function(data, num_bins) {
  bins <- split_into_bins(data, num_bins)
  smoothed_data <- tapply(data, bins, median)
  return(smoothed_data)
}

smoothing_by_bin_boundaries <- function(data, num_bins) {
  bins <- split_into_bins(data, num_bins)
  smoothed_data <- tapply(data, bins, function(x) c(min(x), max(x)))
  return(smoothed_data)
}
num_bins <- 5
smoothed_by_bin_mean <- smoothing_by_bin_mean(data, num_bins)
smoothed_by_bin_median <- smoothing_by_bin_median(data, num_bins)
smoothed_by_bin_boundaries <- smoothing_by_bin_boundaries(data, num_bins)

cat("(a) Smoothing by Bin Mean:\n")
print(smoothed_by_bin_mean)

cat("\n(b) Smoothing by Bin Median:\n")
print(smoothed_by_bin_median)

cat("\n(c) Smoothing by Bin Boundaries:\n")
print(smoothed_by_bin_boundaries)
