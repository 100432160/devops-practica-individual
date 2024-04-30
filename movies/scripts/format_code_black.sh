# Ejecuta black en los archivos especificados
echo "DIRECTORIO: /movies"
black ./movies
if [ $? -ne 0 ]; then
    echo "Error: black falló al formatear el directorio ./movies"
    exit 1
fi

echo "FICHERO: movie.py"
black ./movies/movie.py
if [ $? -ne 0 ]; then
    echo "Error: black falló al formatear movie.py"
    exit 1
fi

echo "FICHERO: movie_commands.py"
black ./movies/movie_commands.py
if [ $? -ne 0 ]; then
    echo "Error: black falló al formatear movie_commands.py"
    exit 1
fi

echo "Black: Todos los archivos fueron formateados correctamente"
exit 0
