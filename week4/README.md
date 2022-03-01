# Week 4 Task
This week's task is to create a library management system, described as follows (you can figure out the exact tasks by reading this section carefully):
- A Book has a title and abstract
- An Author  has a first name,  a last name, and a phone number
- A Publication has a name
- A Book can have many authors
- A Book cannot exist without a publication
- An Author can author many books
- A Publication can be shared by many books
- No two books should have the same title
- Every Author's phone number must be valid (i.e, it should be of 10 digits length)
- The Author model must have a ```full_name``` instance method, that gives the full name of the author
- The Book model must have a ```citation_info``` instance method that cites the 'title', 'authors', and 'info' of the book in a sentence
- The Publication model must have an ```all_books``` method that lists all the books in the database

To solve the above tasks, follow these steps below:
1. Design the schema for above scenario.
2. Identify associations between different tables.
3. Write migrations.
4. Create database and migrate.
5. Define associations in Active Record models.
6. Define validations in Active Record models.

Once done, create a pull request and describe the schema, associations and validations in the README file.
