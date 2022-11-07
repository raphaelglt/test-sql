SELECT AVG(note), film.titre FROM commentaire
INNER JOIN film ON commentaire.id_film = film.id
GROUP BY commentaire.id_film;