import connection from '../database/database.connection.js'
import bcrypt from 'bcrypt';
import { v4 as uuidV4 } from 'uuid';

export async function signUp(req, res) {
    const { name, email, password } = req.body;

    try {
        const user = await connection.query(`SELECT * FROM users WHERE email=$1;`, [email])
        if(user.rowCount !== 0){
            return res.sendStatus(409)
        }
        const passwordHashed = bcrypt.hashSync(password, 10);
        await connection.query(`
            INSERT INTO users (name, email, password)
            VALUES ($1, $2, $3);  
        `, [name, email, passwordHashed])

        res.sendStatus(201)
    } catch (error) {
      res.status(500).send(error.message);
    }
  }
  
