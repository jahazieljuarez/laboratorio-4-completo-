import "dart:io";
void main(List<String> args) {
  stdout.write("ingresa un numero decimal ");
  int decimal = int.parse(stdin.readLineSync()!);
 

String hex = "";
while (decimal >0 ){
int residuo = decimal %16;
decimal = decimal ~/16;
decimal.ceil();

String digito;

if (residuo ==15){
  digito = "F";
}
else if(residuo ==14){
     digito = "E";
}else if(residuo == 13){
digito = "D";
}else if (residuo == 12){
   digito = "C";
   print (digito);
}else if (residuo ==11){
    digito = "B";
}else if(residuo == 10){
    digito =  "A";
}else{
  digito = residuo.toString();
}
hex = digito + hex;

}  print(hex);

  






}