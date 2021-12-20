import ddf.minim.analysis.*;
import ddf.minim.*;
import ddf.minim.signals.*;
 
Minim minim;
AudioOutput out;

void setup()
{
  size(512, 200, P3D);
 
  minim = new Minim(this);
  out = minim.getLineOut(Minim.STEREO);
}
 
void draw()
{
  //the drawing of the waves
  background(0, 0, 255);
  stroke(255, 0 , 0);
  for(int i = 0; i < out.bufferSize() - 1; i++)
  {
    float x1 = map(i, 0, out.bufferSize(), 0, width);
    float x2 = map(i+1, 0, out.bufferSize(), 0, width);
    line(x1, 50 + out.left.get(i)*50, x2, 50 + out.left.get(i+1)*50);
    line(x1, 150 + out.right.get(i)*50, x2, 150 + out.right.get(i+1)*50);
  }
}
 
void keyPressed()
{
  SineWave mySine;
  Note newNote;
 //each keys pitch. (all pretty low for the bass effect)
  float pitch = 0;
  switch(key) {
    case 'z': pitch = 12; break;
    case 's': pitch = 27; break;
    case 'x': pitch = 34; break;
    case 'd': pitch = 41; break;
    case 'c': pitch = 50; break;
    case 'v': pitch = 69; break;
    case 'g': pitch = 70; break;
    case 'b': pitch = 82; break;
    case 'h': pitch = 95; break;
    case 'n': pitch = 100; break;
    case 'j': pitch = 116; break;
    case 'm': pitch = 124; break;
    case ',': pitch = 133; break;
    case 'l': pitch = 144; break;
    case '.': pitch = 157; break;
    case ';': pitch = 162; break;
    case '/': pitch = 179; break;
  }
  //to make sure there is no shredding
   if (pitch > 0) {
      newNote = new Note(pitch, 0.2);
   }
}

void stop()
{
  out.close();
  minim.stop();
 
  super.stop();
}
