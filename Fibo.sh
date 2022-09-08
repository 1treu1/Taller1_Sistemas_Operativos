#!/bin/bash
DIRECTORIO=~/EE923P1/Luis_Herney_Medina_Jimenez
cd
if [ -d "$DIRECTORIO" ]
then
   echo "El directorio ${DIRECTORIO} existe"
else
   mkdir EE923P1
   cd EE923P1/
   mkdir Luis_Herney_Medina_Jimenez
   cd Luis_Herney_Medina_Jimenez/
   mkdir Suma Resta Multiplicacion Division Modulo Fibonacci3
   cd
   #Moviendo archivos
   cp suma.cpp ${DIRECTORIO}/Suma
   g++ -o ${DIRECTORIO}/Suma/suma ${DIRECTORIO}/Suma/suma.cpp
   Suma=$(${DIRECTORIO}/Suma/suma $1 30)
   cp resta.cpp ${DIRECTORIO}/Resta
   g++ -o ${DIRECTORIO}/Resta/resta ${DIRECTORIO}/Resta/resta.cpp
   Resta=$(${DIRECTORIO}/Resta/resta ${Suma} 9)
   cp multiplicacion.cpp ${DIRECTORIO}/Multiplicacion
   g++ -o ${DIRECTORIO}/Multiplicacion/multiplicacion ${DIRECTORIO}/Multiplicacion/multiplicacion.cpp
   Mul=$(${DIRECTORIO}/Multiplicacion/multiplicacion ${Resta} 20)
   cp division.cpp ${DIRECTORIO}/Division
   g++ -o ${DIRECTORIO}/Division/division ${DIRECTORIO}/Division/division.cpp
   Div=$(${DIRECTORIO}/Division/division ${Mul} 21)
   cp modulo.cpp ${DIRECTORIO}/Modulo
   g++ -o ${DIRECTORIO}/Modulo/modulo ${DIRECTORIO}/Modulo/modulo.cpp
   Mod=$(${DIRECTORIO}/Modulo/modulo ${Div} 30)
   cp fibonacci.cpp ${DIRECTORIO}/Fibonacci3
   g++ -o ${DIRECTORIO}/Fibonacci3/fibonacci ${DIRECTORIO}/Fibonacci3/fibonacci.cpp
   Fib=$(${DIRECTORIO}/Fibonacci3/fibonacci ${Mod})
   echo ${Fib} > ${DIRECTORIO}/Fibo3N.txt
   rm -r ${DIRECTORIO}/Suma ${DIRECTORIO}/Resta ${DIRECTORIO}/Multiplicacion ${DIRECTORIO}/Division ${DIRECTORIO}/Modulo ${DIRECTORIO}/Fibonacci3
fi
