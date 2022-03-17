void setup() {
  String[] opgaveListe = loadStrings("input.txt");

  String[] dele = opgaveListe[0].split(";");

  String[] talIdel = dele[1].split("-");

  int antalOpgaver;

  if (talIdel.length == 1) {
    antalOpgaver = 1;
  } else {
    int mindstTal = Integer.parseInt(talIdel[0]);
    int storstTal = Integer.parseInt(talIdel[1]);

    antalOpgaver = storstTal - mindstTal + 1;
  }
  println(antalOpgaver);
}
