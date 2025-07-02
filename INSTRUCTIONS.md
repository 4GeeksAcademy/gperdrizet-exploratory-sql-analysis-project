# SQL Queries + Logical Analysis with Python

Welcome to the Global Institute of Life (GIL)! This fictional center monitors ecosystems around the planet to protect biodiversity, understand patterns in species observations, and make data-driven decisions.

In your new role as a junior data analyst, you will gain access to a database with historical and current information about:

- Understanding biodiversity by region
- Identifying highly observed (or rarely observed) species
- Analyzing observer activity
- Detecting patterns over time and space

Your mission will be to execute SQL queries to understand, explore, and detect relevant patterns. As you progress, you will be able to visualize some of your findings using pandas.


## Understand the structure of your project template

The database is loaded and ready for your analysis. The provided files are:

- `./src/sql/create.sql` Contains the tables you need: `regions, species, climate, observations`
- `./src/sql/insert.sql` Inserts records obtained from a sample provided by [EOD – eBird Observation](https://www.gbif.org/occurrence)
- `./src/sql/queries.sql` is empty and ready for you to fill in.
- `./src/app.py` → Contains the database configuration and functions to execute SQL scripts.

Other important things to mention about the structure:

- Professional projects often have a `./src` folder that contains all the **code files** (the files the programmer will implement).
- `./assets` is irrelevant to you; it contains all the images needed for this tutorial.
- The root of any professional project usually contains all the configuration files like `.gitignore`, `requirements.txt`, etc. You will learn more about these files throughout the project.


## 📝 Instructions

Below you will find real missions from the institute, each designed to develop a different type of SQL query.

Open the file `./src/sql/queries.sql` and write the queries as you solve them. Separate each query with a semicolon `;`.

**Example:**
```sql
-- Detect extreme temperatures
SELECT * FROM climate WHERE avg_temperature > 40 OR avg_temperature < -10;
```

When you finish one or more queries, run the following command in the terminal to see the results:

```bash
python src/app.py
```

This will automatically run each of your queries and display the result in the terminal as a table using Pandas.

> 💡 **You can modify `queries.sql` as many times as you need** and rerun the command to see the new results.

### Level 1 – Basic exploration (SELECT, LIMIT, DISTINCT, WHERE)

1. **What are the first 10 recorded observations?**  
     _Use LIMIT to show only part of the table._

2. **Which region identifiers (`region_id`) appear in the data?**  
     _Use SELECT DISTINCT to avoid duplicates._

3. **How many distinct species (`species_id`) have been observed?**  
     _Combine COUNT with DISTINCT to avoid counting duplicates._

4. **How many observations are there for the region with `region_id = 2`?**  
     _Apply a condition with WHERE._

5. **How many observations were recorded on `1998-08-08`?**  
     _Filter by exact date using equality._

---

### Level 2 – Aggregation and ordering (GROUP BY, COUNT, ORDER BY, HAVING without JOIN)

6. **Which `region_id` has the most observations?**  
     _Group by region and count how many times each appears._

7. **What are the 5 most frequent `species_id`?**  
     _Group, order by descending count, and limit the result._

8. **Which species (`species_id`) have fewer than 5 records?**  
     _Group by species and use HAVING to apply a condition._

9. **Which observers (`observer`) recorded the most observations?**  
      _Group by observer name and count the records._

---

### Level 3 – Relationships between tables (JOIN)

10. **Show the region name (`regions.name`) for each observation.**  
      _Join `observations` with `regions` using `region_id`._

11. **Show the scientific name of each recorded species (`species.scientific_name`).**  
      _Join `observations` with `species` using `species_id`._

12. **Which is the most observed species in each region?**  
      _Group by region and species, and order by count._

---

### Level 4 (optional) – Data manipulation

> This block is optional and only if you want to practice operations that modify data. (INSERT, UPDATE, DELETE)  
> As an analyst, you will normally work with read-only databases.

13. **Insert a new fictitious observation into the `observations` table.**  
      _Be sure to include all fields required by the schema._

14. **Correct the scientific name of a species with a typo.**  
      _First find the incorrect name and then update it._

15. **Delete a test observation (use its `id`).**  
      _Be sure not to delete important data._
