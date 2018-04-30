var talk = new p5.Speech();
var listen = new p5.SpeechRec();

var a;
var b;
var q;

var bot;

function setup(){
    createCanvas(600,600);
    background(0);

b = select('#submit');
q = select('#user');
a = select('#response');

b.mousePressed(chatBot); //whenever the button pressed call chatBot

//brain stuff
bot = new RiveScript();
bot.loadFile("./brain.rive",botReady,botError); //2 functions

//speech stuff
talk.speak("hello you are talking to rivescript") //say something to begin and

    listen.continuous = true;

    listen.onResult = showResult;
    listen.start();

}

function botReady(){
  bot.sortReplies(); // get the file ready with the list of potential answers
}

function botError(){
  console.log('rivescript not loaded - please check files')
}

function chatBot(){
  var question = q.value();
  var reply = bot.reply("local-user",question);
  a.value(reply);
}

function draw(){

    fill(random(255),random(255),random(255),95);
    ellipse(mouseX,mouseY,80,80);

}

function showResult(){
    console.log(listen.resultString);
}
