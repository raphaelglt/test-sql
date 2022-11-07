SELECT film.id, film.titre, film.slug, film.image, film.prix, film.description, film.date_sortie FROM films_categs
INNER JOIN film ON films_categs.id_film = film.id
WHERE films_categs.id_categorie = 51;