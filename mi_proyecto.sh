#!/bin/bash

#
#  Comprobar si el usuario es root
#  En el texto `` tienes que añadir un comando que compruebe cuál es el usuario logueado actualmente
#

# includes
source mi_proceso.sh

usuario=`whoami` 

# Validación del usuario root
if [ $usuario != "root" ]
then
	echo El script tiene que ejecutarse con usuario root
	exit 1
fi

mostrar_menu(){    
    clear	
    echo "*************** MENU PRINCIPAL *******************************"
    echo "u) Gestionar Usuarios"
    echo "d) Gestionar Disco"
    echo "p) Gestionar Procesos"

    echo "s) Salir del script"
    echo "*************************************************************"  

    echo "Introduzca una opcion:" 
    read opcion

    echo "-------------------------------------------------------------"  	

}

while [ "$opcion" != "s" ]
do
	mostrar_menu
	
	case $opcion in
        u) clear;
		echo "Ha seleccionado la opcion: Gestión de Usuarios"
		read parada
	;;	
	
	d) clear;
		echo "Ha seleccionado la opcion: Gestión de Disco"
		read parada
	;;
	
	p) 	
		cabecera_gestion_procesos
		gestionar_procesos	
		read fin_procesos
	;;

	s) clear;
		echo "Ha seleccionado salir del script"
		read parada
	;;
	
	*) clear;
		echo "Opción incorrecta"
		break
		read parada
	;;
	esac

done






