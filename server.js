const Web3 = require("web3");
const express = require("express");
const app = express();

let web3 = new Web3("https://ropsten.infura.io/v3/580a984bbe6e46eebc4df1fa50904a6f")

app.get("/", function(req, res){
    res.send(web3);
})

app.listen(3000, function(){
    console.log("server started");
    console.log(web3.eth.getAccounts().then(console.log))
})