### SQL vs NoSQL: The Differences
  https://www.sitepoint.com/sql-vs-nosql-differences/

  - NoSQL follows denormalization

    which means we may opt to repeat publisher information in every book instead of referencing through foreign key in a separate publisher table.

    ```json
    {
      ISBN: 9780992461225,
      title: "JavaScript: Novice to Ninja",
      author: "Darren Jones",
      format: "ebook",
      price: 29.00,
      publisher: {
        name: "SitePoint",
        country: "Australia",
        email: "feedback@sitepoint.com"
      }
    }
    ```

    SQL implementations are typically normalized and therefore avoid repetition of the same data in multiple tables.

  - NoSQL has no equivalent of JOIN.

    If we used normalized collections, we would need to fetch all book documents, retrieve all associated publisher documents, and manually link the two in our program logic. This is one reason denormalization is often essential.

  - NoSQL operations are atomic
    one at a time. No Transactions feature like SQL

  - NoSQL doesn't enforce data integrity

    We can enforce data integrity through SCHEMA defination in SQL. For example: all book have a `publisher_id` in the table.
    In NoSQL a single document is the source of all information.

  - NoSQL is faster than SQL

  - NoSQL is better suited to scaling
    It can be tricky to distribute related data in multiple servers. NoSQL makes it easy with simpler data model.
