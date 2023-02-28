import connection from '../database/database.connection.js'

export async function authValidation(req, res, next) {
  const { authorization } = req.headers
  const token = authorization?.replace("Bearer ", '')
  if (!token) return res.status(401).send("Informe o token!")
  try {
    const checkSession = await connection.query(`SELECT * FROM sessions WHERE token=$1;`, [token])
    if(checkSession.rowCount === 0){
        return res.status(401).send("Você não tem autorização para ver os registros")
    }
    res.locals.session = checkSession
    next()
  } catch (error) {
    res.status(500).send(error);
  }
}