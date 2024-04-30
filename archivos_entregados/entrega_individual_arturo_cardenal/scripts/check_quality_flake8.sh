# Ejecuta flake8 en los archivos especificados
echo "DIRECTORIO: /movies"
flake8 ./movies
if [ $? -ne 0 ]; then
    echo "Error: flake8 falló al comprobar el directorio /movies"
    exit 1
fi

echo "FICHERO: movie.py"
flake8 ./movies/movie.py
if [ $? -ne 0 ]; then
    echo "Error: flake8 falló al comprobar movie.py"
    exit 1
fi

echo "FICHERO: movie_commands.py"
flake8 ./movies/movie_commands.py
if [ $? -ne 0 ]; then
    echo "Error: flake8 falló al comprobar movie_commands.py"
    exit 1
fi

echo "Flake8 no ha encontrado ningun problema en el código"
exit 0
