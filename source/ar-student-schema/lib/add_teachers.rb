require_relative '../app/models/teacher'

teacher = Teacher.create(first_name: "Mary",
                         last_name: "Poppins",
                         email: "mary@school.com",
                         phone: "440-945-1356"
                         )
teacher.save

teacher = Teacher.create(first_name: "Mary",
                         last_name: "Poppins",
                         email: "mary@school.com",
                         phone: "440-945-1256"
                         )
teacher.save

teacher = Teacher.create(first_name: "Mark",
                         last_name: "Derp",
                         email: "mark@school.com",
                         phone: "443-945-1256"
                         )
teacher.save

teacher = Teacher.create(first_name: "Toby",
                         last_name: "Dumbers",
                         email: "toby@school.com",
                         phone: "440-945-1223"
                         )
teacher.save

teacher = Teacher.create(first_name: "Sarah",
                         last_name: "Waldesheim",
                         email: "sarah@school.com",
                         phone: "440-112-1256"
                         )
teacher.save

teacher = Teacher.create(first_name: "Mike",
                         last_name: "Brock",
                         email: "mike@school.com",
                         phone: "440-945-6231"
                         )
teacher.save

teacher = Teacher.create(first_name: "Anthony",
                         last_name: "Jennings",
                         email: "anthony@school.com",
                         phone: "440-945-0987"
                         )
teacher.save

teacher = Teacher.create(first_name: "Arnold",
                         last_name: "Neimand",
                         email: "arnold@school.com",
                         phone: "440-945-2392"
                         )
teacher.save

teacher = Teacher.create(first_name: "Susie",
                         last_name: "Cookies",
                         email: "susie@school.com",
                         phone: "440-945-1235"
                         )
teacher.save