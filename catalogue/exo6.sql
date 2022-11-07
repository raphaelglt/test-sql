SELECT user.id, user.email, user.password, user.avatar, user.role, user.login FROM user
INNER JOIN commentaire ON commentaire.id_user = user.id
GROUP BY user.id;