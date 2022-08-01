const figlet = require('figlet');

figlet.text('Boo!', {
    font: 'Ghost',
    horizontalLayout: 'default',
    verticalLayout: 'default',
    width: 80,
    whitespaceBreak: true
}, function(err, data) {
    if (err) {
        console.log('SOMETHING WENT WRONG...');
        console.dir(err);
        return;
    }
});
