import "dart:io";

void main(List<String> args) {
  stdout.write("ingresa un numero decimal ");
  int decimal = int.parse(stdin.readLineSync()!);
  int n = decimal;
  int numero1 = 1;
  int numero0 = 0;
  String binario = "";
  while (n > 0) {
    if (n % 2 == 0) {
      binario = numero0.toString() + binario;
      n = n ~/ 2;
      n.floor();
    } else {
      binario = numero1.toString() + binario;
      n = n ~/ 2;
      n.floor();
    }
  }
  int cantidad = binario.length;
  double redondear = cantidad / 4;
  redondear = redondear.ceil().toDouble();
  redondear = redondear * 4;

  while (redondear > binario.length) {
    binario = numero0.toString() + binario;
  }
  print("el numero decimal a binario es $binario");
}
