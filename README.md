SQL-MAGIC-MASTER NARAYANA-EdTech
-

Backend Task(3)
-
![er](https://user-images.githubusercontent.com/67498592/200157608-39f76ae4-0005-4e30-84c9-28b982db289f.png)

Above ER diagram shows one to many relationship between User and Movie.one User can able
to watch multiple movies so based on the diagram write the below sql queries
-

1)Create User Table <br>
2)Create Multiple Movies Tables and add to the User table(Create Minimum 6 Movie tables)<br>
3)Get List of all the movies watched by the User <br>
4)Get List of movies watched by the User and which movie ticket price is more than 150<br>
5)Get List of movies watched by the User and which movie rating below 5 out of 10 <br>
6) Get List of movies watched by the User and where heroin repeats more than or equal to 2 times <br>
7)Print total and avg amount he spent on the movies <br>

Approach
---------

1. I have created the 2 tables one is User and the other is the Movies table
2. movie id is the FK to the User Table and the relation ship is the 1:N i.e one user can see many no of movies
3. And then I queried the above Queries using MYSQL
