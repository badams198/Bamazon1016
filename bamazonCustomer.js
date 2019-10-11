
var inquirer = require("inquirer");
var mysql = require("mysql");
var fs = require("fs");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "password",
    database: "bamazon_db"
});

var viewAll = "SELECT * FROM bamazon_db.products WHERE stock_quantity > 0";
var items = [];

displayTable();


//connect database and display table
function displayTable() {
    connection.connect(function(err) {
        if (err) throw err;

            connection.query(viewAll, function(err, results) {
            if (err) throw (err);

            
            for (var i = 0; i < results.length; i++) {
                var availableItems = {};
                availableItems["item_id"] = results[i].item_id;
                availableItems["product"] = results[i].product_name;
                availableItems["Dept."] = results[i].department_name;
                availableItems["price"] = results[i].price;
                availableItems["quantity"] = results[i].stock_quantity;

                items.push(availableItems);
            }

            viewItems();
        });
    });
}

//  *missing functions to purchase items
function viewItems() {

    console.log("\n-------------------\nWelcome to Bamazon!\n-------------------");
    console.log("\nThese are all the items we have available!\n");
    
    console.table(items);

    
};
   
