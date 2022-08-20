const express = require("express");
const http = require("http");
const mongoose = require("mongoose");
const app = express();
const { Server } = require("socket.io")
const port =  process.env.PORT||3000;

var server = http.createServer(app);
const io = new Server.default(server);


//middle ware
app.use(express.json());

// const DB = "mongodb+srv://adarsh:12345@cluster0.ezuzfwm.mongodb.net/?retryWrites=true&w=majority";
console.log("HELLO")
io.on("connection", (socket) =>{
    console.log("connected!"+ socket);
    // socket.on("createRoom", ({nickname}) => {
    //     console.log(nickname);
    // });
}).on('error',(e)=> {console.log(e)});


// mongoose.connect(DB).then(() =>{
//     console.log("connection successful")
// }).catch((e) =>{
//     console.log(e);
// });



server.listen(port, '0.0.0.0',() => {
    console.log(`server started and running on port ${port}`);
});