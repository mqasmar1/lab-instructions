# Lab 08 - Script 02: Writing a Function
# Purpose: Create a reusable function to scrape any page

# Load packages
library(tidyverse)
library(rvest)

# INTRODUCTION TO FUNCTIONS
# ==========================
# You've been using functions (like read_html, html_nodes, etc.)
# Now you'll write your own!

# Let's start with a simple example:
add_two <- function(x) {
  x + 2
}

# Test it:
add_two(3)    # Returns 5
add_two(10)   # Returns 12

# FUNCTION ANATOMY
# ================
# function_name <- function(inputs) {
#   # do something with inputs
#   # return result
# }


# YOUR TURN: Write a Scraping Function
# =====================================
# We want a function that:
# - Takes a URL as input
# - Scrapes that page
# - Returns a tibble with title, artist, and link

# EXERCISE 5: Complete the function
# ==================================

scrape_page <- function(url) {
  
  # Read the page
  page <- read_html(___)
  
  # Extract titles
  titles <- page %>%
    html_nodes("___") %>%
    html_node("___") %>%
    html_text() %>%
    str_squish()
  
  # Extract links
  links <- page %>%
    html_nodes("___") %>%
    html_node("___") %>%
    html_attr("___") %>%
    str_replace("___", "___")
  
  # Extract artists
  artists <- page %>%
    html_nodes("___") %>%
    html_text() %>%
    str_squish()
  
  # Create and return tibble
  tibble(
    title = ___,
    artist = ___,
    link = ___
  )
}

# Hints:
# - The input is called 'url', so use that variable name
# - Copy code from script 01, but replace specific URLs with 'url'
# - The function should return the tibble (last line)


# TEST YOUR FUNCTION
# ==================
# Define the URLs from script 01
first_url <- "https://collections.ed.ac.uk/art/search/*:*/Collection:%22edinburgh+college+of+art%7C%7C%7CEdinburgh+College+of+Art%22?offset=0"
second_url <- "https://collections.ed.ac.uk/art/search/*:*/Collection:%22edinburgh+college+of+art%7C%7C%7CEdinburgh+College+of+Art%22?offset=10"

# Test your function
scrape_page(first_url)
scrape_page(second_url)

# Does it work? Do you get 10 rows each time?
# Compare to your results from script 01 - they should match!


# CHECKPOINT
# ==========
# At this point you should have:
# - A working function called scrape_page()
# - Successfully tested it on two URLs

# Success! You've written your first R function.
# Commit and push your changes before moving to script 03.