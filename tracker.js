const mysql = require("mysql");
const inquirer = require("inquirer");

const consoletable = require("console.table");
// const fs = require("fs");

var connection = mysql.createConnection({
    host: "localhost",

    port: 3306,

    user: "root",

    password: "Starwood7!",
    database: "employeeTracker_db"

});

connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id" + connection.threadId);
    makeConnection();
    ReadEmployee();
});

const menu = [
    {
        name: "Main Menu",
        type: "list",
        message: "What would you like to do?",
        choices: 
        
        ["View All Employees",
            "View all employee by department",
            "View All Employees by Role",
            "Add Employee",
            "Add Role",
            "Add Department",
            "Update Employee Role",
            "Exit"],
        }
    ];
    
    function makeConnection() {
        inquirer.prompt(menu).then(function (userChoice){
            console.log(userChoice.main);
            ReadEmployee();
            
        })
    }
    
    
    
    
    
    
    
    function ReadEmployee() {
        console.log ("Selecting from employee roster...\n");
        connection.query("SELECT*FROM company_employee", function(err, res){
            if (err) throw err;
    
            console.table(res);
            makeConnection();
        })
    }



















// function addEmployee() {
//     console.log("Adding new Employee....\n");
//     var query = connection.query(
//         "INSERT INTO company_employee SET ?",
//         {
//             first_name: "Juan Flores",
//             last_name: "Flores",
//             role: "Owner",
//             role_id: 1,
//             manager_id: ""
//         },
//         function (err, res) {
//             if (err) throw err;
//             console.log(res.affectedRows + "New employee insterted!\n");
//             updateEmployee();
//         }
//     );


//     console.log(query.sql);
// }


// function updateEmployee() {
//     console.log("Updating employee roster...\n");
//     var query = connecton.query(
//         "UPDATE company_employee SET ? WHERE ?",
//         [
//             {
//                 quantity: 1
//             },

//         ],
//         function(err, res) {
//             if(err) throw err;
//             console.log(res.affectedRows + "Employee roster updated!\n");
//             deleteEmployee();
//         }
//     );

//     console.log(query.sql);
// }

// function deleteEmployee() {
//     console.log("Deleting outdated employee file...\n");
//     connection.query(
//         "DELETE FROM company_employee WHERE ?",
//         {
//             first_name: "",
//             last_name: "",
//             role: "Owner",
//             role_id: "",
//             manager_id: ""

//         },
//         function (err, res) {
//             if (err) throw err;
//             console.log(res.affectedRows + "Employee deleted!\n");

//             ReadEmployee();
//         }
//     );
// }

