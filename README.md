# Task 6: Elevate Labs SQL Developer Internship 
## Subject: Subqueries and Nested Queries

### Objective  
To utilize various types of subqueries in SQL through `SELECT`, `WHERE`, and `FROM` clauses; and to develop strong logical query skills by using practical experience.

---

### What I Worked on Today  

For this task, I continued to use the **Internship database** from Task 5 -- which consists of two main tables:  
- `interns`  
- `mentors`  

I practiced **major types of subqueries** by combining real data to analyze the relationship between interns and mentors.

---

### What I Did  

#### Scalar Subquery (in SELECT)
- Showcased each intern’s name, domain, and their mentor’s years of experience.  
- Used a subquery in the `SELECT` clause to look up mentor experience dynamically for every intern.

#### Subquery in WHERE (using IN)
- Extracted interns whose mentors are specialized in **Finance** or **Web Development**.
- Applied the use of `IN` operator to match mentor IDs under conditions in the mentors table.

#### Subquery in WHERE (using EXISTS)
- Shown all interns who are mentored by mentors.
- Extracted interns whose mentors possess **experience of over 4 years**.
- Found interns that **do not have any mentor assigned** with `NOT EXISTS`.
- Discovered how `EXISTS` verifies the existence of related data with more efficiency than `IN`.

#### Correlated Subquery
- Found mentors who mentor **more than one intern**.
- Executed a query where the inner subquery relies on every row of the outer query, displaying real-time data relationship between both tables.

#### Subquery within FROM Clause (Inline View)
- Generated a temporary summary table displaying the **number of interns each mentor mentors**.
- Joined this output with the mentors table to show mentor names and total interns.
- Utilized it to show only mentors with at least one intern under them.

---

### Key Concepts Practiced

- How `IN` and `EXISTS` operate differently in filtering results.
- Use of **scalar**, **correlated**, and **inline view** subqueries.
- Designing effective subqueries that return filtered or aggregated information.
- Real-time handling of the relations between interns and mentors.
- Logical placement of subqueries for query optimization.

---

### Tools Used  
- **MySQL Workbench**  

---

### Outcome  
By completing this task, I strengthened my understanding of:  
- How to nest queries within each other to build powerful logic.  
- Combining aggregation and conditions through inline views.
