import processing.sound.*;

AudioIn input;
Amplitude loudness;

void setup() {
  size(500, 500);
  input = new AudioIn(this, 0);

  // Begin capturing the audio input
  input.start();
  loudness = new Amplitude(this);

  // Patch the input to the volume analyzer
  loudness.input(input);
}


void draw() {
  float volume = loudness.analyze();
  background((255*volume));
}
