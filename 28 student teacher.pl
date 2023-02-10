% Define the facts for the database
student(john, math).
student(jane, science).
student(jim, history).

teacher(alice, math).
teacher(bob, science).
teacher(chris, history).

subject_code(math, 101).
subject_code(science, 102).
subject_code(history, 103).

% Define the rules to query the database
% The first rule finds the teacher of a student, given the student's name
teacher_of_student(Student, Teacher) :- student(Student, Subject), teacher(Teacher, Subject).

% The second rule finds the subject code, given the student's name
subject_code_of_student(Student, SubjectCode) :- student(Student, Subject), subject_code(Subject, SubjectCode).
