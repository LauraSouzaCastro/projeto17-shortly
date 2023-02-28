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

export async function getUrlById(req, res) {
    const { id } = req.params
    try {
        const url = await connection.query(`SELECT id, "shortUrl", url FROM urls WHERE id=$1;`, [id])
        if(url.rowCount === 0){
           return res.sendStatus(404)
        }
        res.status(200).send(url.rows[0])
    } catch (error) {
        res.status(500).send("Erro no servidor");
    }
}

export async function getShortUrl(req, res) {
    const { shortUrl } = req.params

    try {
        const url = await connection.query(`SELECT id, url, "visitCount" FROM urls WHERE "shortUrl"=$1;`, [shortUrl])

        if(url.rowCount === 0){
           return res.sendStatus(404)
        }

        await connection.query(`UPDATE urls SET "visitCount"=$1 WHERE id = $2;`, [url.rows[0].visitCount+1, url.rows[0].id])

        res.redirect(url.rows[0].url)
    } catch (error) {
        res.status(500).send("Erro no servidor");
    }
}

export async function deleteUrlById(req, res) {
    const { id } = req.params
    try {
        const session = res.locals.session;
        const url = await connection.query(`SELECT "userId" FROM urls WHERE id=$1;`, [id])
        if(url.rowCount === 0){
           return res.sendStatus(404)
        }
        if(session.rows[0].userId !== url.rows[0].userId){
            return res.sendStatus(401)
        }
        await connection.query(`DELETE FROM urls WHERE id = $1;`, [id])
        res.sendStatus(204)
    } catch (error) {
        res.status(500).send("Erro no servidor");
    }
}