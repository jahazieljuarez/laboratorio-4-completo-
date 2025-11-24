import "dart:io";
import "dart:math";
void main(List<String> args) {
  

try {
  


 stdout.write("ingresa el numero binario ");
 int binario = int.parse(stdin.readLineSync()!);
 int posicion = 0;
 int decimal = 0;
 int digito ;
 while(binario > 0){
digito = binario %10;
decimal = decimal + digito *pow(2, posicion).toInt();
binario = binario ~/10;
binario = binario.floor();
posicion++;

 }
print("el numero binario a decimal es $decimal");}
catch (e) {
  print("no se permite letras, ingrese 1 o 0");
}






}
