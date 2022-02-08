# Assignments - Week 1

* Fork this repository and use the `week1_<your_name>` branch for your work.
* Once you have completed the assignment, submit a Pull Request with your work to the branch `week1_assignment` **(not `main`)**.
* Your Pull Request will be graded by the automated tests.
* Status of your grading will be indicated using GitHub tags on your _PR_.

---

## Assignment 1 - Ruby Basics

> Write a program to check if aninput number is an armstrong number or not.

### What is an Armstrong number?

An n-digit number that is the sum of the nth powers of its digits is called an n-narcissistic number. It is also known as an Armstrong number.
[Reference Document](https://mathworld.wolfram.com/NarcissisticNumber.html)

> Example: 153 == 1^3 + 5^3 + 3^3

> Example: 1634 == 1^4 + 6^4 + 3^4 + 4^4

### Input Format

User will be asked to enter a number. This is the only input given by the user.

### Output Format

* A boolean value is output by the program - `true` or `false`.

### Examples

> Input: **153**
> Output: **true**

> Input: **123**
> Output: **false**

### Run test locally

```bash
# First install the required gem
# Run the command given below inside `week1` directory
bundle install
```

```bash
# Run the tests
ruby armstrong_test.rb
```

### Submission Instructions

* Work on a Git branch called `week1_<your_name>`.
* Edit the [`armstrong.rb`](./armstrong.rb) file as instructed.

---

## Assignment 2 - HTML Basics

> Create a profile page that displays your name, age, city, photo, and three favorite movies.

### Expected Contents and Design Principles

* The profile page must have a header with your name and photo.
* The profile page must have a section with a list of your favorite movies.
* The profile page must have a footer with a copyright message.
* The profile page must have a table with your age and city.

### Submission Instructions

* Work on a Git branch called `week1_<your_name>`.
* Create HTML files in the [`week1`](./) folder itself.
* Add screenshots of the HTML files (when opened in a browser) to your PR description.

---

## Contact

In case of doubts related to the Bootcamp, feel free to reach out to the mentors on the [**#doubts**](https://teams.microsoft.com/l/channel/19%3a6e5ce5031c594c34927026726a750f12%40thread.tacv2/%255BRuby%2520on%2520Rails%255D%2520Doubts?groupId=ebcdbf1c-6b25-48f4-9dfc-9f5e3666cc00&tenantId=36e917dc-1abe-43f4-b189-f92196a6b4ad) channel in the MS Team.
