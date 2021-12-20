class Note implements AudioSignal
{
     private float freq;
     private float level;
     private float alph;
     private SineWave sine;
     
     Note(float pitch, float amplitude)
     {
         freq = pitch;
         level = amplitude;
         sine = new SineWave(freq, level, out.sampleRate());
         alph = 0.7;
         out.addSignal(this);
     }

     void updateLevel()
     {
       //when playing a new key the old one will stop bc if the level is lower than a certain requirement
         level = level * alph;
         sine.setAmp(level);
         
         if (level < 0.01) {
             out.removeSignal(this);
         }
     }
     
     void generate(float [] samp)
     {
         sine.generate(samp);
         updateLevel();
     }
     
    void generate(float [] sampL, float [] sampR)
    {
        sine.generate(sampL, sampR);
        updateLevel();
    }

}
