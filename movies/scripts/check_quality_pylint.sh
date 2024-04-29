# Ejecuta black en los archivos especificados
echo "FICHERO: movie.py"
pylint ./movies/movie.py
if [ $? -ne 0 ]; then
    echo "Error: pylint falló al comprobar movie.py"
    exit 1
fi

echo "FICHERO: movie_commands.py"
pylint ./movies/movie_commands.py
if [ $? -ne 0 ]; then
    echo "Error: pylint falló al comprobar movie_commands.py"
    exit 1
fi

echo "FICHERO: web_app.py"
pylint ./web_app.py
if [ $? -ne 0 ]; then
    echo "Error: pylint falló al comprobar web_app.py"
    exit 1
fi

exit 0
