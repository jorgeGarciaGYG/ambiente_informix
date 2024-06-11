# Creación de un ambiente de ifnormix con docker

Para poder levantar este ambiente se deben de seguir los siguientes pasos:
1. Cambiar la ruta del volumen actual por la ruta correspondiente a la ruta donde se almacene este repositorio.
2. Ejecutar el comando `docker-compose up` o `docker-compose up -d` para que el proceso se realice en segundo plano.
3. Ejecutar el comando `docker exec -it ifx_test bash` para acceder al bash dentro del contenedor.
4. Una vez dentro del bash del contenedor ejecutar el comando `dbaccess`