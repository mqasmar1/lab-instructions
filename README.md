# Lab Instructions

## Overview

This repository contains all lab assignments for the Introduction to Data Science course (Math 225) at Santiago Canyon College. Labs are designed to provide hands-on practice with data analysis, visualization, and statistical concepts in R. Each lab builds progressively on skills from previous weeks.

**Labs are completed independently** in this asynchronous online course, with scaffolding and support built into each assignment to help you succeed.

---

## 📂 File Organization

Each lab is contained in its own subfolder (e.g., `Lab01/`, `Lab02/`, etc.). Within each folder, you'll find:

- **`.Rmd` file** - The R Markdown document where you'll complete your work
- **`img/` folder** - Images and graphics used in the lab (if applicable)
- **`data/` folder** - Data files for the lab (if applicable)
- **`scripts/` folder** - R scripts for specific labs (e.g., Lab 08 web scraping)
- **Supporting files** - Any additional materials specific to that lab

---

## ⚠️ IMPORTANT: Fork First, Then Clone!

**DO NOT clone this repository directly!** If you do, you won't be able to push your work.

### One-Time Setup (Do this at the beginning of the semester)

1. **Fork the repository** to your own GitHub account:
   - Go to the course `lab-instructions` repository on GitHub
   - Click the **Fork** button in the top-right corner
   - This creates your own copy of the repository under your GitHub account

2. **Clone YOUR forked repository** to JupyterHub:
   - In JupyterHub, go to RStudio
   - Click **File → New Project → Version Control → Git**
   - Paste the URL of **YOUR forked repository** (not the course repository!)
   - Example: `https://github.com/YourUsername/lab-instructions`
   - Click **Create Project**

3. **Verify you're working in your fork:**
   - In RStudio, look at the Git pane
   - The repository name should be `YourUsername/lab-instructions`
   - NOT `CourseOrganization/lab-instructions`

### Why Fork?

- **Forking** creates your own copy of the repository under your GitHub account
- You have full permission to push changes to your fork
- The course staff can still see your work
- Multiple students can work independently without conflicts

---

## 📚 Lab Overview

| Lab | Topic | Key Skills | Time |
|:----|:------|:-----------|:-----|
| **[Lab 01](Lab01/)** | Hello R! | R basics, Git/GitHub workflow, R Markdown, data exploration | 60-90 min |
| **[Lab 02](Lab02/)** | Global plastic waste | ggplot2, faceting, pipelines, visualization interpretation | 90-120 min |
| **[Lab 03](Lab03/)** | Nobel laureates | Data wrangling, if_else, faceted visualizations, confounding | 90-120 min |
| **[Lab 04](Lab04/)** | La Quinta & Denny's, Pt. 1 | Spatial data, filtering, case_when, joins, maps | 90-120 min |
| **[Lab 05](Lab05/)** | La Quinta & Denny's, Pt. 2 | Functions, iteration, map_dfr, distance calculations | 90-120 min |
| **[Lab 06](Lab06/)** | Take a sad plot and make it better | Critiquing visualizations, pivot_longer, design decisions | 90-120 min |
| **[Lab 07](Lab07/)** | Smokers in Whickham | Simpson's paradox, categorical variables, conditional probability | 60-90 min |
| **[Lab 08](Lab08/)** | UoE Art Collection | Web scraping, rvest, functions, iteration, data cleaning | 120-150 min |
| **[Lab 09](Lab09/)** | Conveying the right message | Critiquing misleading visualizations, tribble, honest data viz | 45-60 min |
| **[Lab 10](Lab10/)** | Grading the professor, Pt. 1 | Simple linear regression, interpreting coefficients, categorical predictors | 90-120 min |
| **[Lab 11](Lab11/)** | Grading the professor, Pt. 2 | Multiple regression, adjusted R², model comparison | 60-90 min |

---

## 🔄 Workflow for Each Lab

### Starting Each Lab

1. Navigate to your forked `lab-instructions` repository in JupyterHub
2. Open the appropriate lab folder (e.g., `Lab02/`)
3. Open the `.Rmd` file for that lab
4. Update the YAML with your name
5. Knit to make sure it compiles
6. **Commit** with message: `"Updated author name"`
7. **Push** to **your forked repository** on GitHub

### While Working
```
Work on exercises → Knit → Commit → Push (to YOUR fork)
```

**The Knit/Commit/Push Pattern:**

Throughout labs, you'll see this reminder:

🧶 **Knit** → ✅ **Commit** → ⬆️ **Push**

This means:
1. Click the **Knit** button to generate output
2. Go to the **Git** pane → **Diff** → Check all changed files
3. Write a meaningful **commit message**
4. Click **Commit**
5. Click **Push** (to your forked repository)

> **Important:** 
> - Commit and push regularly throughout each lab (not just at the end!)
> - Your commits will show up in YOUR forked repository
> - Always push to YOUR fork, never to the course repository

### Finishing a Lab

1. ✅ Review all answers for completeness
2. ✅ Check that all code chunks are properly labeled
3. ✅ Knit the entire document
4. ✅ Commit and push all changes to your fork
5. ✅ Verify everything is on GitHub (in YOUR fork)
6. ✅ Submit any required files to Canvas (if applicable)

---

## 🎯 Common Lab Patterns

### Learning Objectives

Every lab starts with clear objectives stating what skills you'll practice or demonstrate.

### Warm Up

Every lab includes a warm-up section where you:
- Update your name in the YAML
- Knit the document
- Commit and push
- Verify changes on GitHub

### Scaffolding

Labs provide scaffolding to support independent learning:
- **Code chunks with blanks** (fill in `___`)
- **Hints** about which functions to use
- **Examples** of expected output
- **Structured answer spaces** for interpretations

### Fill-in Code Chunks

Many exercises include code with `eval = FALSE` and blanks to fill:
```r
# Remember to change eval=FALSE to eval=TRUE!
data %>%
  filter(___ == "___")
```

**Don't forget to:**
1. Fill in the blanks
2. Change `eval=FALSE` to `eval=TRUE`
3. Test the code
4. Knit to verify it works

### Checkpoints

Strategic verification points help you catch errors early:
- ✓ Checkpoint: You should see X rows and Y columns
- Verify it worked: Run this command...
- Check: The result should show...

### Common Errors Sections

Every lab includes troubleshooting for:
- Common error messages and solutions
- Conceptual misunderstandings
- Technical issues specific to that lab's content

---

## 💡 Tips for Success

### General Tips
- ⏰ **Start early!** Don't wait until the deadline
- 📖 **Read the entire lab** before starting to understand the flow
- 🆘 **Ask for help** if you're stuck for more than 20 minutes
- 👥 **Use office hours** and discussion forums
- 💾 **Save frequently** and commit often

### Technical Tips
- Always **load packages** at the beginning (`library(tidyverse)`, etc.)
- **Read error messages carefully** - they often tell you what's wrong
- Use `?function_name` to access **help documentation**
- Use `View(dataset)` in the Console to **explore data**
- Test code chunks **individually** before knitting the whole document
- Keep your **working directory** organized

### Git/GitHub Tips
- **Commit messages** should be brief but descriptive (e.g., "Completed Exercise 3")
- **Push regularly** so your work is backed up
- If push fails, you might be pushing to the course repo instead of your fork
- **Check YOUR fork on GitHub** after pushing to verify your work is there
- Never work in the course repository - always in YOUR fork

### R Markdown Tips
- Use **inline code** when requested: `` `r variable_name` `` in narrative text
- **Label code chunks** with short, descriptive names (no spaces)
- Change `eval=FALSE` to `eval=TRUE` when you want code to run
- **Knit frequently** to catch errors early
- If knitting fails, run chunks individually to find the error

---

## 🔧 Common Issues and Solutions

<details>
<summary><b>"Permission denied" or "403 error" when pushing</b></summary>

- **Cause:** You cloned the course repository directly instead of your fork
- **Solution:** You need to fork the repository first, then clone your fork. Ask for help if you've already started working!
</details>

<details>
<summary><b>"Error: object not found"</b></summary>

- **Cause:** You referenced a variable/dataset that doesn't exist
- **Solution:** Make sure you loaded the required packages and ran all code chunks in order
</details>

<details>
<summary><b>"Error: could not find function"</b></summary>

- **Cause:** Package not loaded
- **Solution:** Run `library(tidyverse)` (or whatever package is needed) in your Console
</details>

<details>
<summary><b>Knitting fails</b></summary>

- **Cause:** Error in one of your code chunks
- **Solution:** Run each code chunk individually to find which one has the error
</details>

<details>
<summary><b>Git pane shows many files but won't commit</b></summary>

- **Cause:** You haven't checked the boxes next to files
- **Solution:** Click the checkbox next to each file you want to commit
</details>

<details>
<summary><b>Can't push to GitHub</b></summary>

- **Cause:** Either authentication issue or trying to push to course repo instead of your fork
- **Solution:** 
  1. Check that you're working in YOUR fork (look at the Git pane)
  2. Try pulling first, then pushing again
  3. If still failing, ask for help
</details>

<details>
<summary><b>Not sure if I'm in my fork or the course repository</b></summary>

- **Check in RStudio:** Look at the Git pane - it should show `YourUsername/lab-instructions`
- **Check on GitHub:** Your commits should appear in your fork at `github.com/YourUsername/lab-instructions`
</details>

<details>
<summary><b>Changes not showing after knitting</b></summary>

- **Cause:** File not saved
- **Solution:** Save your file first (Ctrl+S or Cmd+S), then knit again
</details>

<details>
<summary><b>Inline code not working</b></summary>

- **Cause:** Syntax error or variable doesn't exist
- **Solution:** Make sure you're using the correct syntax and that the variable has been created
</details>

---

## 🆘 Getting Help

1. **Check the Common Errors section** at the end of each lab
2. **Review lecture materials and previous labs** - labs build on these
3. **Ask classmates** on the discussion board (but don't share code!)
4. **Attend office hours** - instructors are here to help!
5. **Email your instructor** if you're completely stuck

When asking for help, include:
- Which lab and exercise you're working on
- What you've tried
- The error message (if any)
- What you think might be wrong

---

## 📤 Lab Submission

Most labs require verification that your work is on GitHub:

1. **GitHub** - Your final committed and pushed work in YOUR FORK (we can see your forked repo)
2. **Canvas** - Sometimes a PDF or other file may be required

**To verify your work is on GitHub:**
- Go to your forked repository: `github.com/YourUsername/lab-instructions`
- Navigate to the lab folder
- Check that your latest commits are visible
- Verify that both `.Rmd` and `.md` files are updated

---

## 📖 Academic Integrity

- ✅ You may discuss **concepts** with classmates
- ❌ You may **not share code** or written answers
- ✅ All work you submit must be **your own**
- ✅ **Cite** any external resources you use (beyond course materials)
- ❌ Using AI tools to complete labs is considered academic dishonesty

---

## 🔀 Quick Reference: Git Workflow

| Action | What it does | When to do it |
|:-------|:-------------|:--------------|
| **Fork** | Creates your own copy of a repository under your GitHub account | Once at the beginning of the semester |
| **Clone** | Downloads a repository to your local machine (JupyterHub) | Once after forking |
| **Commit** | Saves a snapshot of your changes locally | After completing each exercise or section |
| **Push** | Uploads your commits to GitHub (your fork) | After each commit or group of commits |
| **Pull** | Downloads changes from GitHub to your local machine | Before starting work (if working from multiple locations) |

---

## 📈 Lab Progression

Labs are designed to build on each other:

### Foundations (Labs 01-03)
- Basic R, RStudio, Git/GitHub
- Data visualization with ggplot2
- Data wrangling with dplyr

### Intermediate Skills (Labs 04-06)
- Advanced data wrangling (joins, case_when)
- Functions and iteration
- Visualization design and critique

### Advanced Topics (Labs 07-09)
- Statistical paradoxes
- Web scraping
- Data ethics and honest representation

### Modeling (Labs 10-11)
- Simple linear regression
- Multiple regression
- Model comparison

**Each lab assumes you understand concepts from previous labs!**

---

## ✅ Important Reminders

- ✅ **Fork FIRST, then clone** - don't skip the forking step!
- ✅ **Commit and push regularly** - don't lose your work!
- ✅ **Push to YOUR fork** - check the repository name in Git pane
- ✅ **Knit often** - catch errors early
- ✅ **Read instructions carefully** - follow all requirements
- ✅ **Fill in blanks AND change eval** - both steps are necessary
- ✅ **Label code chunks** - use informative, unique labels
- ✅ **Write complete sentences** - interpretations should be clear and in context
- ✅ **Check YOUR fork on GitHub** - verify your work is there before the deadline
- ✅ **Start early** - give yourself time to get help if needed

---

## ❓ Questions?

Don't hesitate to ask during office hours, or on the discussion board. We're here to help you succeed! 🎓

**Remember:** The goal is to learn, not just to finish. Take your time, experiment, make mistakes, and ask questions. That's how you become proficient in data science!


---

## 🔗 Resources

- [R for Data Science](https://r4ds.hadley.nz/) - Free online textbook
- [RStudio Cheatsheets](https://www.rstudio.com/resources/cheatsheets/) - Quick references
- [ggplot2 Documentation](https://ggplot2.tidyverse.org/) - Visualization help
- [Happy Git with R](https://happygitwithr.com/) - Git/GitHub tutorials
