# Lab 08 - Script 01: Scraping a Single Page
# Purpose: Learn to scrape data from one page of the art collection

# Load packages
library(tidyverse)
library(rvest)

# INTRODUCTION TO WEB SCRAPING
# =============================
# In this script, we'll scrape data from the first page of the 
# University of Edinburgh art collection. Each page shows 10 art pieces.

# Set the URL for the first page
first_url <- "https://collections.ed.ac.uk/art/search/*:*/Collection:%22edinburgh+college+of+art%7C%7C%7CEdinburgh+College+of+Art%22?offset=0"

# Read the HTML from this page
page <- read_html(first_url)

# What did we just do?
# - first_url contains the web address
# - read_html() downloads the HTML code from that address
# - page now contains all the HTML code from that webpage

# SCRAPING TITLES
# ===============
# Let's extract the titles of the art pieces on this page

# Step 1: Use SelectorGadget to identify the CSS selector
# Go to the URL above, click on SelectorGadget, and click on a title
# You should find that titles are in: .iteminfo h3 a

# Step 2: Extract the title nodes
page %>%
  html_nodes(".iteminfo") %>%      # Get all iteminfo sections
  html_node("h3 a")                 # Get the h3 a tags within each

# Step 3: Extract just the text from these nodes
page %>%
  html_nodes(".iteminfo") %>%
  html_node("h3 a") %>%
  html_text()                       # Extract text content

# Step 4: Clean up the whitespace
page %>%
  html_nodes(".iteminfo") %>%
  html_node("h3 a") %>%
  html_text() %>%
  str_squish()                      # Remove extra spaces

# Step 5: Save as a vector
titles <- page %>%
  html_nodes(".iteminfo") %>%
  html_node("h3 a") %>%
  html_text() %>%
  str_squish()

# Check what we got
titles

# SCRAPING LINKS
# ==============
# The same nodes also contain links to individual art piece pages

# HTML lesson: Links look like this in HTML:
# <a href="https://example.com">Link Text</a>
# The URL is in the "href" attribute

# Extract the href attribute
page %>%
  html_nodes(".iteminfo") %>%
  html_node("h3 a") %>%
  html_attr("href")                 # Get the href attribute

# These are "relative links" - they're missing the beginning of the URL


# EXERCISE 1: Fix the URLs
# ========================
# The links we scraped look like: /record/123456
# But we need them to look like: https://collections.ed.ac.uk/art/record/123456

# Click on one of the art piece titles in your browser and look at the full URL.
# Now use str_replace() to add the missing part to the beginning of each link.

# Fill in the blanks:
links <- page %>%
  html_nodes(".iteminfo") %>%
  html_node("h3 a") %>%
  html_attr("href") %>%
  str_replace("\\.", "___")         # Replace . with the full URL root

# Hint: The pattern "\\." matches a period at the start
# Replace it with: "https://collections.ed.ac.uk/art"

# Check your work
links


# EXERCISE 2: Scrape Artist Names
# ================================
# Now it's your turn! Use SelectorGadget to find the CSS selector for artist names.
# Then fill in the blanks below.

# Step 1: Go to the webpage and use SelectorGadget to find the artist selector
# Step 2: Fill in the blanks with the correct CSS selector

artists <- page %>%
  html_nodes("___") %>%             # Fill in with the correct selector
  html_text() %>%
  str_squish()

# Check your work
artists


# EXERCISE 3: Put It All Together
# ================================
# Combine the title, artist, and link into a tibble (data frame)

# Fill in the blanks:
first_ten <- tibble(
  title = ___,
  artist = ___,
  link = ___
)

# Check your work
first_ten


# EXERCISE 4: Scrape the Next Page
# =================================
# Now let's scrape the second page (pieces 11-20)

# Step 1: Go to the website and click "Next" to go to page 2
# Step 2: Copy the URL from your browser and paste it below

second_url <- "___"

# Step 3: Copy and adapt the scraping code from above
# (You can copy from line 18 onward and change 'first_url' to 'second_url')

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

# Combine into tibble
second_ten <- tibble(
  title = ___,
  artist = ___,
  link = ___
)

# Check your work
second_ten


# CHECKPOINT
# ==========
# At this point you should have:
# - first_ten: A tibble with 10 rows (first page)
# - second_ten: A tibble with 10 rows (second page)

# Verify:
nrow(first_ten)   # Should be 10
nrow(second_ten)  # Should be 10

# Success! You've scraped two pages.
# Now commit and push your changes before moving to script 02.