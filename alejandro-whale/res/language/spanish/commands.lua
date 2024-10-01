local commands = {
	cliHelp = {
		update =
		"update se utiliza para descargar información de paquetes de todas las fuentes configuradas. Otros comandos operan sobre estos datos para, por ejemplo, realizar actualizaciones de paquetes o buscar y mostrar detalles sobre todos los paquetes disponibles para instalación.",

		upgrade =
		"upgrade se utiliza para instalar las actualizaciones disponibles de todos los paquetes actualmente instalados en el sistema desde las fuentes configuradas a través de la lista de fuentes. Se instalarán nuevos paquetes si es necesario para satisfacer dependencias, pero los paquetes existentes nunca serán eliminados. Si una actualización para un paquete requiere la eliminación de un paquete instalado, no se realizará la actualización para este paquete.",

		fullUpgrade =
		"full-upgrade realiza la función de upgrade, pero eliminará paquetes actualmente instalados si esto es necesario para actualizar el sistema en su conjunto.",

		install =
		"install se utiliza para instruir al gestor de paquetes a obtener los archivos necesarios para instalar uno o más paquetes especificados.\nSe puede seleccionar una versión específica de un paquete para la instalación siguiendo el nombre del paquete con un signo igual (=) y la versión del paquete a seleccionar. Alternativamente, se puede seleccionar la versión de un lanzamiento específico siguiendo el nombre del paquete con una barra inclinada (/) y el nombre en código (bullseye, bookworm, sid ...) o el nombre de la suite (stable, testing, unstable). Esto también seleccionará versiones de este lanzamiento para las dependencias de este paquete si es necesario satisfacer la solicitud.",

		remove = "remove se utiliza para deshacerse de un conjunto dado de paquetes (TODO: recursión de dependencias).",

		show =
		"Mostrar información sobre el(los) paquete(s) dado(s), incluyendo sus dependencias, tamaño de instalación y descarga, fuentes de las que está disponible el paquete, la descripción del contenido del paquete y mucho más. Puede ser útil consultar esta información antes de permitir que whale elimine un paquete o mientras se busca nuevos paquetes para instalar.",

	}
}
