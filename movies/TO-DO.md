### Pipeline:

1. Código con formato adecuado
  - Black (https://github.com/psf/black)
2. Código correcto de acuerdo con unas guías y estándares
  - Pylint (https://pypi.org/project/pylint/)
  - Ruff (https://github.com/astral-sh/ruff)
  - Flake8 (https://flake8.pycqa.org/en/latest/)
3. Código cumple una serie de pruebas
  - Pytest (https://docs.pytest.org/en/8.0.x/)
  - El programa provisto ya incluye pruebas con esta biblioteca
4. Código cumple una serie de métricas
  - Pytest (cobertura)
  - Utilizando la implementación propuesta se debe incluir una ejecución con el siguiente parámetro
    ```python -m pytest '$TEST_DIR' --cov=movies```
  - Bandit (https://pypi.org/project/bandit/)
  - Radon (https://pypi.org/project/radon/)
    - Para McCabe's complexity --> ```radon cc -a "$TARGET_DIR"```


### Tareas

- [x] Formatear código (black)
- [ ] Chequear estándares (pytlint, flake8, ruff)
- [ ] Ejecutar pruebas (pytest)
- [ ] Ejecutar cobertura del código (pytest)
- [ ] Ejecutar otras pruebas (bandit, radon)
- [ ] Desplegar opcional (Heroku)