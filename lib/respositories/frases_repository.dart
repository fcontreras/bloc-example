import 'dart:math';

class FrasesRepository {

  final List<String> frases = [
    "Que la fuerza te acompañe",
    "Le voy a hacer una oferta que no podrá rechazar",
    "Mantén a tus amigos cerca pero a tus enemigos mas cerca",
    "Se está mejor en casa que en ningún otro sitio",
    "Elemental querido Watson",
    "Hasta la vista, baby...",
    "¡Está vivo! ¡Está viiivo!"

  ];

  Future<String> fraseAleatoria() async {
    var random = Random();
    return frases[random.nextInt(frases.length)];
  }

}