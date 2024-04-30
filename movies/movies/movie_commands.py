""" Modulo con los comandos relacionados con las peliculas """

from typing import List
from pydantic import BaseModel
from movies.movie import Movie


class CreateMovieCommand(BaseModel):
    """Clase para crear una pelicula"""

    title: str
    duration: int
    category: str

    def execute(self) -> Movie:
        """Funcion para ejecutar la creacion de la pelicula"""
        movie = Movie.get_by_title(self.title)
        if movie is None:
            movie = Movie(
                title=self.title, duration=self.duration, category=self.category
            ).save()
            return movie
        return movie


class ListMovies(BaseModel):
    """Clase apra listar todas las peliculas"""

    def execute(self) -> List[Movie]:
        """Funcion para ejecutar el listado de peliculas"""
        movies = Movie.list()
        return movies


class GetMovieById(BaseModel):
    """Clase para obtener una pelicula por su ID"""

    id: str

    def execute(self) -> Movie:
        """Ejecutar la obtencion de la pelicula"""
        movie = Movie.get_by_id(self.id)
        return movie
