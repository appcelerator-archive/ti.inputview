// This is a test harness for your module
// You should do something interesting in this harness 
// to test out the module and to provide instructions 
// to users on how to use it by example.


// open a single window
var window = Ti.UI.createWindow({
  backgroundColor:'white'
});
window.open();

var InputView = require('org.appcelerator.inputview');


var myview = Ti.UI.createView({
	width:320,
	height:100,
	backgroundColor:'red',
	bottom:0
});

var tf = Titanium.UI.createTextField({
	color:'#336699',
	height:35,
	top:10,
	left:10,
	width:250,
	keyboardType:Titanium.UI.KEYBOARD_DEFAULT,
	returnKeyType:Titanium.UI.RETURNKEY_DEFAULT,
	borderStyle:Titanium.UI.INPUT_BORDERSTYLE_ROUNDED
});

InputView.attach({
	inputview: myview,
	textview: tf
});


tf.addEventListener('return',function()
{
	tf.blur();
});



window.add(tf);
