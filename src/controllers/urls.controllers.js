import connection from '../database/database.connection.js'
import { nanoid } from 'nanoid'

export async function shorten(req, res) {
    const { url } = req.body
    try {
        const session = res.locals.session;
        const shortUrl = nanoid()
        
        await connection.query(`
            INSERT INTO urls ("shortUrl", url, "userId")
            VALUES ($1, $2, $3);
        `, [shortUrl, url, session.rows[0].userId])

        const shortUrlId = await connection.query(`SELECT id, "shortUrl" FROM urls WHERE "shortUrl"=$1;`, [shortUrl])

        res.status(201).send(shortUrlId.rows[0])
    } catch (error) {
        res.status(500).send("Erro no servidor");
    }
}