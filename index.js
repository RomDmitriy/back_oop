const express = require('express');
const Pool = require('pg').Pool;

const PORT = 5000;

const app = express();
app.use(express.json());
const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'oop',
    password: 'postgres',
    port: 5432
});

// получить читателей
app.get('/readers', async (req, res) => {
    try {
        const result = await pool.query(`SELECT value FROM readers;`);
        res.json(result.rows.map(x => x.value));
    } catch (_) {
        res.status(500);
    }
    res.end();
});

// задать читателей
app.post('/readers', async (req, res) => {
    try {
        await pool.query(`DELETE FROM readers;`);
        await pool.query(`INSERT INTO readers (value) VALUES ${req.body.map(x => "('" + x + "')").join(', ')};`);
        res.status(201)
    } catch (e) {
        console.log(e)
        res.status(500);
    }
    res.end();
});

// получить книги
app.get('/books', async (req, res) => {
    try {
        const result = await pool.query(`SELECT value FROM books;`);
        res.json(result.rows.map(x => x.value));
    } catch (_) {
        res.status(500);
    }
    res.end();
});

// задать книги
app.post('/books', async (req, res) => {
    try {
        await pool.query(`DELETE FROM books;`);
        await pool.query(`INSERT INTO books (value) VALUES ${req.body.map(x => "('" + x + "')").join(', ')};`);
        res.status(201)
    } catch (e) {
        console.log(e)
        res.status(500);
    }
    res.end();
});

app.listen(PORT, () => {
    console.log('Server started on port ', PORT);
})