# Ejecuta black en los archivos especificados
black ./movies/movie.py
if [ $? -ne 0 ]; then
    echo "Error: black falló al formatear movie.py"
    exit 1
fi

black ./movies/movie_commands.py
if [ $? -ne 0 ]; then
    echo "Error: black falló al formatear movie_commands.py"
    exit 1
fi

black ./web_app.py
if [ $? -ne 0 ]; then
    echo "Error: black falló al formatear web_app.py"
    exit 1
fi

echo "Todos los archivos fueron formateados correctamente."
exit 0
