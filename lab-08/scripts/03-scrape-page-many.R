# Lab 08 - Script 03: Scraping Many Pages with Iteration
# Purpose: Use your function to scrape ALL pages efficiently

# Load packages
library(tidyverse)
library(rvest)

# Load your function from script 02
# (Copy and paste the scrape_page function here, or source the file)

scrape_page <- function(url) {
  # Your function from script 02
  # (Copy it here)
}


# UNDERSTANDING THE URL PATTERN
# ==============================
# Look at these URLs:
# Page 1:  ...offset=0      (pieces 1-10)
# Page 2:  ...offset=10     (pieces 11-20)
# Page 3:  ...offset=20     (pieces 21-30)
# ...
# Page 297: ...offset=2960  (pieces 2961-2970)

# The pattern: offset increases by 10 each time
# We need to construct a list of all 297 URLs


# EXERCISE 6: Construct the List of URLs
# =======================================

# Step 1: Define the root (common part of all URLs)
root <- "https://collections.ed.ac.uk/art/search/*:*/Collection:%22edinburgh+college+of+art%7C%7C%7CEdinburgh+College+of+Art%22?offset="

# Step 2: Create a sequence of offset numbers
# We need: 0, 10, 20, 30, ..., 2960
# Fill in the blanks:
offsets <- seq(from = ___, to = ___, by = ___)

# Check: How many URLs will we have?
length(offsets)  # Should be 297

# Step 3: Paste the root and offsets together
# Fill in the blanks:
urls <- paste0(___, ___)

# Check the first few URLs
head(urls)
# Should look like:
# "...offset=0"
# "...offset=10"
# "...offset=20"


# EXERCISE 7: Map the Function Over All URLs
# ===========================================

# We'll use map_dfr() to:
# 1. Apply scrape_page() to each URL
# 2. Combine all results into one data frame

# IMPORTANT: This will take several minutes!
# The function will scrape 297 pages, one at a time.

# Fill in the blanks:
uoe_art <- map_dfr(___, ___)

# What this does:
# - map_dfr takes each element of urls
# - Applies scrape_page to it
# - Combines all the resulting tibbles into one data frame
# - "dfr" means "data frame by rows"

# Optional: Add a progress indicator and delay to be polite
# (Uncomment if you want to use this instead)
# uoe_art <- map_dfr(urls, function(url) {
#   message("Scraping: ", url)           # Show progress
#   result <- scrape_page(url)
#   Sys.sleep(0.5)                       # Wait 0.5 seconds between requests
#   result
# })


# VERIFY THE RESULTS
# ==================
# Check the dimensions
dim(uoe_art)  # Should be approximately 2970 rows, 3 columns

# Check the first few rows
head(uoe_art)

# Check the structure
glimpse(uoe_art)


# EXERCISE 8: Write Out the Data
# ===============================
# Save the scraped data to a CSV file so we can use it in the analysis

# Fill in the blanks:
write_csv(___, "data/___.csv")

# Hint: 
# - First argument: the data frame to save (uoe_art)
# - Second argument: the file path ("data/uoe_art.csv")


# CHECKPOINT
# ==========
# At this point you should have:
# - A CSV file in your data folder called uoe_art.csv
# - Approximately 2970 rows of data

# Success! You've completed the web scraping portion.
# Commit and push your changes, then return to lab-08-uoe-art.Rmd for analysis.

# DON'T FORGET TO COMMIT:
# - This script file
# - The data/uoe_art.csv file
# - Any other changed files