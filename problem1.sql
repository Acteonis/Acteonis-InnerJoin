/**
         * Problem 1: Write a query that will return the id, and name of each of Ms. Lovelace's students. Notice that
         * Ms. Lovelace teaches two classes, but which classes she teaches aren't known from the data in the student
         * table. This means that you will need a way to combine the data from the two tables (inner join).
         *
         * You will need to simultaneously filter those results WHERE class.teacher_name = student.student_name.
         * For instance,
         * SELECT * FROM table_left INNER JOIN table_right
         * ON table_left.column1 = table_right.column3
         * WHERE table_left.column1 = value;
         *
         *
         * Note: There should not be a wild card (*) in your statement. You will need to specify the column in your
         * statement by writing table.column, because the column names may be ambiguous between class and student.
         */
         SELECT  student.id, student.student_name FROM student INNER JOIN class
         ON class.class_title = student.class_title
         WHERE class.teacher_name = 'Ms. Lovelace';