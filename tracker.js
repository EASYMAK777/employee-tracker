const mysql = require("mysql");
const inquirer = require("inquirer");

const consoletable = require("console.table");
const fs = require("fs");

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
    
});


const menu = [
    {
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
        name: "menu",
    }
];







function makeConnection() {
    inquirer.prompt(menu).then(function (userChoice){
        console.log(userChoice.main);
        const choice = userChoice.main;

        if (choice === "View All Employees") {
            addEmployee();
            console.log("adding employee")
            connection.end();
          }

        
    })
};


    
    
    
    
    
    


function addEmployee() {
    console.log("Adding new Employee....\n");
    var query = connection.query(
        "INSERT INTO company_employee SET ?",
 
        function (err, res) {
            if (err) throw err;
            console.log(res.affectedRows + "New employee insterted!\n");
        }
        );
        
        
        console.log(query.sql);
        addEmployee();
}


