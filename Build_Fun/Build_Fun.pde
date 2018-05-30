
//Class Example - Building Functions

int score = 50;
PImage sad;
PImage happy;

void setup() {
  size(2000, 1500); 
  //fullScreen();
  //Load the images for checkScore()
  sad = loadImage("sadTart.png");
  happy = loadImage("happy.jpg");

  textSize(70);
  noLoop(); //This makes the draw function stop looping. (It only runs once).
  background(0);
  frameRate(20);
}

void draw() {
  fill(0, 0, 0, 20);
  rect(0, 0, width, height);

  fill(255);
  writeRandom(censorship("moist"));
  writeRandom(censorship("it's smooth"));
  writeRandom(censorship("cat"));
  writeRandom(censorship("Hello"));
  writeRandom(censorship("what the heck"));
  writeRandom(censorship("I don't like void functions"));
  writeRandom(censorship("STUPID"));
}


//Score checking function
void checkScore() {
  //Very simple "organizer" function.

  if (score < 50) {
    text("SAD", 500, 500);
    image(sad, 400, 600);
  }
  if (score >=50 && score < 80) {
    text("OKAY", 500, 500);
  }
  if (score >= 80) {
    text("AWESOME!", 500, 500);
    image(happy, 100, 500, 800, 500);
  }
}

void writeRandom(String phrase) {

  //Pick a random colour.
  fill(random(255), random(255), random(255));

  //Use a text command to write the word randomly.
  text(phrase, random(width-400), random(height-150)+50, 400, 500);
}


String censorship(String WORD) {


  WORD = WORD.toLowerCase();

  //Replace == with .equals() whenever you use Strings.


  if (WORD.contains("toes") || WORD.contains("heck") || WORD.contains("void")) {
    return "****";
  }
  if (WORD.contains( "moist")) {


    return "*****";
  }
  if (WORD.contains( "cat")) {

    return "***";
  }

  if (WORD.contains("smooth") || WORD.contains( "stupid")) {

    return "******";
  }



  return WORD;
}