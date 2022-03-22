void setup() {
  String[] opgaveListe = loadStrings("input.txt");

  String[] dele = opgaveListe[0].split(";");

  int samletAntalOpgaver = 0;

  for (int i = 0; i < dele.length; i++) {
    String[] talIdel = dele[i].split("-");
    int antalOpgaver;
    if (talIdel.length == 1) {
      antalOpgaver = 1;
    } else {
      int mindstTal = Integer.parseInt(talIdel[0]);
      int storstTal = Integer.parseInt(talIdel[1]);

      antalOpgaver = storstTal - mindstTal + 1;
    }
    samletAntalOpgaver = samletAntalOpgaver + antalOpgaver;
  }

  String svar = Integer.toString(samletAntalOpgaver);
   
   String[] svarArray = new String[1];
   svarArray[0] = svar;
   saveStrings("output.txt", svarArray);
 
}
