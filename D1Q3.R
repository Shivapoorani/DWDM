data <- c(200, 300, 400, 600, 1000)
min_max_normalize <- function(x) {
  min_val <- min(x)
  max_val <- max(x)
  normalized <- (x - min_val) / (max_val - min_val)
  return(normalized)
}
min_max_normalized <- min_max_normalize(data)
z_score_normalize <- function(x) {
  mean_val <- mean(x)
  std_dev <- sd(x)
  normalized <- (x - mean_val) / std_dev
  return(normalized)
}

z_score_normalized <- z_score_normalize(data)

cat("(a) Min-Max Normalization:\n", min_max_normalized, "\n")
cat("(b) Z-Score Normalization:\n", z_score_normalized, "\n")