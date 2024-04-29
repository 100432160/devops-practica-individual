""" Modulo para levantar el web service """
from flask import Flask, jsonify, request

from movies.movie_commands import CreateMovieCommand, GetMovieById, ListMovies

app = Flask(__name__)


@app.route("/create-movie/", methods=["POST"])
def create_article():
    """ Peticion de crear pelicula nueva """
    cmd = CreateMovieCommand(**request.json)
    return jsonify(cmd.execute().dict())


@app.route("/movie/<movie_id>/", methods=["GET"])
def get_movie(movie_id):
    """ Peticion para obtener pelicula por su ID """
    query = GetMovieById(id=movie_id)
    return jsonify(query.execute().dict())


@app.route("/movie-list/", methods=["GET"])
def list_movies():
    """ Peticion para obtener todas las peliculas """
    query = ListMovies()
    records = [record.dict() for record in query.execute()]
    return jsonify(records)


if __name__ == "__main__":
    app.run(debug=True)
