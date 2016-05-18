# Descripción de Diagramas

[Volver al Inicio](/projects/security)

--------

Con el objetivo de definir el impacto de los ataques con la mayor exactitud posible, hemos definido un subdiagrama de *assets* que muestra las distintas relaciones que existen entre los mismos. Este diagrama se repite en los distintos diagramas de amenazas.

## Diagrama de Confidencialidad

En este diagrama modelamos los ataques que afectan la __confidencialidad de los datos__. Para ello nos hemos basado en las distintas __vulnerabilidades__ que hemos podido encontrar en el sistema, entre las cuales se encuentran:

- Fallos en el sistema de inserción SQL.
- Deficiencias en los sistemas de prevención/reacción.
- Falta de aislamiento en el hardware.
- Errores en el sistema/diseño.
- Dispositivos fáciles de robar.
- Falta de medidas de anulación en los dispositivos.

A partir de estas vulnerabilidades trazamos los diferentes ataques con la finalidad de hacer un uso malicioso de los *assets* relacionados con los datos almacenados en el sistema.

En base a las vulnerabilidades antes mencionadas, se abren diferentes __vectores de ataque__ (escenarios de amenaza). Entre ellos, encontramos:

- Inyección SQL.
- Keyloggers.
- Suplantación de usuarios.
  - Voluntaria.
  - Involuntaria.
- Escalada de permisos en el sistema.

Usando estos vectores de ataque, el atacante puede conseguir __permisos de administración__ en el sistema, __datos privados__ almacenados de usuarios, etc.

## Diagrama de Disponibilidad

En este diagrama modelamos los ataques que afectan la __disponibilidad de los servicios__ del sistema. Para ello nos hemos basado en las distintas __vulnerabilidades__ que hemos podido encontrar en el sistema, entre las cuales se encuentran:

- Sistema de backup comprometido.
- Falta de validación de sentencias SQL.
- Mantenimiento defectuoso.
- Ausencia de firewall o configuración errónea.
- Insuficiente isolación de componentes.
- Falta de medidas de seguridad.
- Sistema eléctrico inseguro.

A partir de estas vulnerabilidades trazamos los diferentes ataques con la finalidad de __bloquear acceso o uso de los diferentes servicios__ que ofrece el sistema, ya sea a usuarios directamente como a otros actores no humanos del sistema.

En base a las vulnerabilidades antes mencionadas, se abren diferentes __vectores de ataque__ (escenarios de amenaza). Entre ellos, encontramos:

- Inyección SQL.
- Ataque de Denegación de Servicios Distribuido (*DDoS*, *Tango Down*).
- Ataques virales a las plataformas digitales.
- Cuellos de botellas.
- Desastres naturales o inclemencias meteorológicas.
- Extravío de dispositivos de identificación.

Usando estos vectores de ataque, el atacante puede __dejar inservibles__ servicios como el __sistema de identificación de usuarios__, el __sistema de pagos__, el __sistema de contadores__ de los puntos de carga, etc.

## Diagrama de Integridad

En este diagrama modelamos los ataques que afectan la __integridad de los assets__ de los que dispone el sistema. Para ello nos hemos basado en las distintas __vulnerabilidades__ que hemos podido encontrar en el sistema, entre las cuales se encuentran:

- Fallos en el sistema de inserción SQL.
- Falta de mantenimiento.
- Deficiencias en el sistema de prevención/reacción.
- Errores en el sistema/diseño.
- Dispositivos fáciles de robar.

A partir de estas vulnerabilidades trazamos los diferentes ataques con la finalidad de __eliminar, modificar o comprometer los assets__ de los que dispone el sistema, ya sean elementos hardware o software sobre los que se ejecuta el sistema.

En base a las vulnerabilidades antes mencionadas, se abren diferentes __vectores de ataque__ (escenarios de amenaza). Entre ellos, encontramos:

- Inyección SQL.
- Fallo de persistencia en el servidor.
- Deterioro de los sistemas de almacenamiento.
- Ataques virales en las plataformas digitales.
- Suplantación de identidades de usuario.
- Dispositivos de identificación extraviados.

Usando estos vectores de ataque, el atacante puede __comprometer la integridad del sistema__, ya sea __deteriorando componentes__ de este (hardware o software), induciendo __errores en la persistencia de datos__, obligando a __encaminar el flujo de datos por un proxy__, destruyendo la __seguridad del firewall__, etc.

--------

[Volver al Inicio](/projects/security)

--------
