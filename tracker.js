const mysql = require("mysql")
const inquirer = require("inquirer")
const consoletable = require("console.table");
const { ReadStream } = require("fs");

var connection = mysql.createConnection({
    host: "localhost",

    port: 8707,

    user: "EASYMAK777",

    password: "Starwood7",
    database: "employeeTracker_db"

});

connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id" + connection.threadId + "\n");
    addEmployee();
});

function addEmployee() {
    console.log("Adding new Employee....\n");
    var query = connection.query(
        "INSERT INTO employee SET ?",
        {
            first_name: "Juan Flores",
            last_name: "Flores",
            role: "Owner",
            role_id: 1,
            manager_id: ""
        },
        function (err, res) {
            if (err) throw err;
            console.log(res.affectedRows + "New employee insterted!\n");
            updateEmployee();
        }
    );


    console.log(query.sql);
}


function updateEmployee() {
    console.log("Updating employee roster...\n");
    var query = connecton.query(
        "UPDATE employee SET ? WHERE ?",
        [
            {
                quantity: 1
            },
            
        ],
        function(err, res) {
            if(err) throw err;
            console.log(res.affectedRows + "Employee roster updated!\n");
            deleteEmployee();
        }
    );
    
    console.log(query.sql);
}

function deleteEmployee() {
    console.log("Deleting outdated employee file...\n");
    connection.query(
        "DELETE FROM employee roster WHERE ?",
        {
            first_name: "",
            last_name: "",
            role: "Owner",
            role_id: "",
            manager_id: ""

        },
        function (err, res) {
            if (err) throw err;
            console.log(res.affectedRows + "Employee deleted!\n");

            ReadEmployee();
        }
    );
}

function ReadEmployee() {
    console.log ("Selecting from employee roster...\n");
    connection.query("SELECT*FROM employees", function(err, res){
        if (err) throw err;

        console.log(res);
        connection.end();
    })
}
