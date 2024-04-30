# Ejecuta Bandit en los archivos especificados
echo "DIRECTORIO: /movies"
bandit -r ./movies
if [ $? -ne 0 ]; then
    echo "Error: bandit falló al comprobar el directorio /movies"
    exit 1
fi

echo "FICHERO: movie_commands.py"
bandit -r ./movies/movie_commands.py
if [ $? -ne 0 ]; then
    echo "Error: bandit falló al comprobar movie_commands.py"
    exit 1
fi

echo "FICHERO: movie.py"
bandit -r ./movies/movie.py
if [ $? -ne 0 ]; then
    echo "Error: bandit falló al comprobar movie.py"
    exit 1
fi

echo "Bandit no ha encontrado ningún problema"
exit 0
