python -m pytest ./tests --cov=movies
if [ $? -ne 0 ]; then
    echo "Pytest: error al ejecutar el test de cobertura"
    exit 1
fi

echo "Pytest: tests de cobertura ejecutado sin problema"
exit 0