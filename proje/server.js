
const server = require('http').createServer();
const io = require('socket.io')(server);


io.on('connection', function(socket){
    console.log('sockete birileri bağlandı.');

    socket.on('new-post', function(data){
        console.log(data);
        io.emit('posts', data);

    });

    socket.on('disconnect', function(){
        console.log('birileri geldi ve gitti.');
    });

});


server.listen(5000);