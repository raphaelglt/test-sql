SELECT * FROM commentaire
INNER JOIN user ON commentaire.id_user = user.id
INNER JOIN film ON commentaire.id_film = film.id
WHERE film.id = 43;