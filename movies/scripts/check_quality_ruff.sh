# Ejecuta black en los archivos especificados
echo "DIRECTORIO: /movies"
ruff check ./movies
if [ $? -ne 0 ]; then
    echo "Error: pylint falló al comprobar el directorio /movies"
    exit 1
fi

echo "FICHERO: movie_commands.py"
ruff check ./movies/movie_commands.py
if [ $? -ne 0 ]; then
    echo "Error: ruff falló al comprobar movie_commands.py"
    exit 1
fi

echo "FICHERO: movie.py"
ruff check ./movies/movie.py
if [ $? -ne 0 ]; then
    echo "Error: ruff falló al comprobar movie.py"
    exit 1
fi

echo "Ruff no ha encontrado ningún problema"
exit 0
