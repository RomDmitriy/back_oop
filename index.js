const express = require('express');
const Pool = require('pg').Pool;

const PORT = 5000;

const app = express();
app.use(express.json());
const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'postgres',
    password: 'postgres',
    port: 5432
});

// получить читателей
app.get('/readers', async (req, res) => {
    try {
        const result = await pool.query(`SELECT * FROM readers;`);
        res.json(result.rows);
    } catch (_) {
        res.status(500);
    }
    res.end();
});

// задать читателей
app.put('/readers', async (req, res) => {
    try {
        await pool.query(`DELETE FROM readers;`);
        req.body = req.body.map(x => JSON.parse(x));
        // req.body.forEach(x => delete x['id']);
        await pool.query(`INSERT INTO readers (full_name,id,phone_number) VALUES ${req.body.map(x => "(" + Object.values(x).map(x => "'" + x + "'").join(',') + ")").join(', ')};`);
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
        const result = await pool.query(`SELECT * FROM books;`);
        res.json(result.rows);
    } catch (_) {
        res.status(500);
    }
    res.end();
});

// задать книги
app.put('/books', async (req, res) => {
    try {
        await pool.query(`DELETE FROM books;`);
        req.body = req.body.map(x => JSON.parse(x));
        await pool.query(`INSERT INTO books (name,author,country,year,index,date_in,added_date,web,description,curr_user) VALUES ${req.body.map(x => "(" + Object.values(x).map(x => "'" + x + "'").join(',') + ")").join(', ')};`);
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