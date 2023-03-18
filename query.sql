#ya hace bien el query, error en left join
SELECT 
    C.idExperiencias,
    D.descripcionExperiencias,
    C.puntosExperiencias
FROM
    (SELECT 
        B.idUsuarios,
		A.idExperiencias,
        A.puntosExperiencias
    FROM
        usuariosYexperiencias A
	INNER JOIN 
		usuarios B 
	ON 
		A.idUsuarios = B.idUsuarios
    AND
        B.idUsuarios = 325) AS C
	LEFT JOIN
		experiencias D 
    ON 
		D.idExperiencias = C.idExperiencias
	AND
		D.esActivo = 1
	OR
		C.puntosExperiencias is NULL
	ORDER BY
		C.idExperiencias ASC


select A.idExperiencias, A.descripcionExperiencias,B.puntosExperiencias from experiencias A LEFT JOIN (select idUsuariosYexperiencias, idExperiencias,puntosExperiencias from usuariosYexperiencias where idUsuarios = 2) AS B ON A.idExperiencias = B.idExperiencias where a.esActivo = 1

