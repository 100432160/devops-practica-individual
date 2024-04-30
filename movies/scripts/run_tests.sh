python -m pytest ./tests
if [ $? -ne 0 ]; then
    echo "Pytest: error al ejecutar los tests"
    exit 1
fi

echo "Pytest: tests ejecutados sin problema"
exit 0