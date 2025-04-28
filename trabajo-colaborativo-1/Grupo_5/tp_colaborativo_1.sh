#!/bin/bash

#Consigna 5.1
ingresa_nombre(){
  echo "Ingrese su nombre: "
  read nombre
  echo "Ingrese su apellido: "
  read apellido
  echo "Su nombre es: ${nombre^^} ${apellido^^}."
}

ingresa_nombre

#Consigna 5.2
ingresa_cuenta_palabra(){
  echo "Ingrese una palabra para saber cuantos caracteres tiene: "
  read palabra
  contador=0
  
  for ((i=0; i<${#palabra}; i++))
  do
    ((contador += 1))
  done

  echo "Su palabra: $palabra, tiene $contador caracteres."
}

ingresa_cuenta_palabra

#Consigna 5.3
ingresa_password(){
  echo "Ingrese su contraseña: "
  read -s password
  echo "Confirme su contraseña: "
  read -s confirm_password

  while [[ "$password" != "$confirm_password" ]]
  do 
    echo "La confirmación de contraseña no coincide, intente nuevamente: "
    read -s confirm_password
  done

  echo "Contraseña confirmada correctamente, ¡Bienvenido al sistema!"  
}

ingresa_password