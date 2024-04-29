# Ejecuta black en los archivos especificados
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

echo "FICHERO: web_app.py"
flake8 ./web_app.py
if [ $? -ne 0 ]; then
    echo "Error: flake8 falló al comprobar web_app.py"
    exit 1
fi

echo "No flake8 issues found in the Python code"
exit 0
