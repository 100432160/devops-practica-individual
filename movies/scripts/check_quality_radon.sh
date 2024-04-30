# Ejecuta Radon en los archivos especificados
echo "DIRECTORIO: /movies"
radon cc -a ./movies/
if [ $? -ne 0 ]; then
    echo "Error: radon falló al comprobar el directorio /movies"
    exit 1
fi

echo "FICHERO: movie_commands.py"
radon cc -a ./movies/movie_commands.py
if [ $? -ne 0 ]; then
    echo "Error: radon falló al comprobar movie_commands.py"
    exit 1
fi

echo "FICHERO: movie.py"
radon cc -a ./movies/movie.py
if [ $? -ne 0 ]; then
    echo "Error: radon falló al comprobar movie.py"
    exit 1
fi

echo "Radon no ha encontrado ningún problema"
exit 0
