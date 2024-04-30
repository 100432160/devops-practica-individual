# Ejecuta pylint en los archivos especificados
echo "DIRECTORIO: /movies"
pylint ./movies
if [ $? -ne 0 ]; then
    echo "Error: pylint falló al comprobar el directorio /movies"
    exit 1
fi

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

echo "No pylint issues found in the Python code"
exit 0
