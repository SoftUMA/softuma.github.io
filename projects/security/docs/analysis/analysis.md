# Análisis de escenarios

[Volver al Inicio](/projects/security)

--------

## Escenario 1: puntos de carga configurados en zonas abiertas

- __Área físico en el que se desarrolla el punto de carga__:
  - Grados de aislamiento y control: El aislamiento en este caso es nulo en cuanto a barreras físicas, tan solo existen medidas de seguridad pasivas o de supervisión monitorizadas.
  - Facilidad de acceso al área: Al tratarse de zonas abiertas, la facilidad de acceso es total.
  - Entorno: Al ser una zona abierta, las amenazas directas que requieran presencia física son más fáciles de llevar a cabo.
- __Comunicación entre el cliente y el punto de carga__:
  - Modos de acceso:
    - RFID / NFC: Funcionalidad incluida en los últimos smarthphones que permite una comunicación a muy corta distancia y que puede servir como identificación del usuario al ser este el portador univoco del dispositivo. Una ventaja es que hace las veces de clave física. Una desventaja podría ser que dispositivos más antiguos no tuvieran soporte para esta tecnología.
    - OTP (One Time Password): Método de autenticación basado en un envío de una contraseña temporal al usuario, por norma general, vía SMS, email...
    - Usuario / Contraseña: Sistema de identificación más popular y extendido hoy día.
    - QR Code: Similar a la identificación OTP, con la diferencia que el usuario no ha de leer / memorizar ningún código, siendo el móvil el que realiza esta actividad.
    - Huella dactilar: Sistema de seguridad biométrica basada en las hendiduras de las huellas dactilares de los dedos de la manos. Una ventaja es que el usuario no necesita ningún soporte. Un posible inconveniente es que habría que ajustar el equilibrio entre facilidad de acceso y seguridad de identificación.
- __El tipo de comunicación entre los diferentes actores y el sistema de control__:
  - __Listado de actores__:
    - Personal de mantenimiento.
    - Clientes (a través de interfaces web o móvil).
    - Puntos de carga.
    - Proveedores de energía.
    - Servidores.
  - __Obervaciones sobre las comunicaciones actor-sistema__: El hecho de que las comunicaciones se realicen a través de internet puede conllevar posibles ataques remotos. En el caso de las comunicaciones que usen tecnologías inalámbricas, estos ataques serían más accesibles para los supuestos atacantes y más difíciles de detectar; mientras que en el caso de comunicaciones por cable, el ataque deviene más complejo, aunque no imposible.

## Escenario 2: puntos de carga configurados en zonas cerradas

- __Área físico en el que se desarrolla el punto de carga__:
  - Grados de aislamiento y control: El grado de aislamiento es superior al que podemos encontrar en los escenarios del primer tipo, lo que hace más fácil el control de acceso y puede perjudicar las comunicaciones inalámbricas.
  - Facilidad de acceso al área: Si la zona cerrada en concreto incluye un sistema de seguridad para el acceso, se limitaría el rango de actores humanos que podrían acceder a este servicio.
  - Entorno: Un entorno cerrado supone un mayor grado de aislamiento en cuanto a amenazas directas.
- __Comunicación entre el cliente y el punto de carga__:
  - Los medios de comunicación entre el cliente y el punto de carta en este tipo de escenario no difiere con los del primero.
- __El tipo de comunciación entre los diferentes actores y el sistema de control__:
  - Al igual que en el caso de las comunicaciones entre el cliente y los puntos de carga, no hay mucho que decir en cuanto a las comunicaciones entre actores y el sistema de control que no se haya dicho ya en los escenarios del tipo 1.
  - Un posible matiz a tener en cuenta: si el punto de carga se trata de uno privado, instalado en una propiedad privada y para uso de un único individuo propietario, se podrían evadir amenazas en cuanto a los métodos de identificación.

## Assets:

- __Físicos__:
  - Torre de recarga.
  - Cableado de comunicaciones.
  - Cableado eléctrico.
  - Suministro eléctrico (comunicación unidireccional).
  - Terminal.
  - Cluster servidores.
  - Vehículo del cliente.
  - Sistemas de seguridad (activos y pasivos).
  - Sistemas de comunicación con el usuario (lector de tarjetas y de NFC).
  - Dispositivos de comunicación (dispositivos móviles, tarjetas de crédito/débito).
- __Digitales__:
  - Datos del cliente (datos de pago, datos de consumo, datos personales).
  - Datos de sistema (datos de pago, datos de consumo, datos personales).
  - Servidor web.
  - Servidor base de datos.
  - Aplicación móvil.
  - Aplicación web.

## Amenazas:

- __Directas__:
  - Corte del suministro eléctrico.
  - Destrozo por tercero.
  - Suplantación voluntaria de identidad.
  - Keyloggers.
  - Ataques virales.
  - Inyección SQL.
  - Session hijacking.
  - Vectores de ataque web.
  - Ataque DDoS.
- __Indirectas__:
  - Suplantación involuntaria.
  - Inclemencias metereológicas (tormentas).
  - Desastres naturales (movimientos sísmicos, maremotos...).
  - Sistemas de almacenamiento deteriorados.
  - Cuello de botella en la conexión servidor-aplicaciones.
  - Error en el servicio debido a operaciones de mantenimiento.
  - Pérdida de dispositivos de identificación.

--------

[Volver al Inicio](/projects/security)

--------
