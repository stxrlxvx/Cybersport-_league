import mysql from 'mysql2'

import dotenv from 'dotenv'
dotenv.config()

const pool = mysql.createPool({
    host: process.env.MYSQL_HOST,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASSWORD,
    database: process.env.MYSQL_DATABASE
}).promise()

export async function getMatches () {
    const [rows] = await pool.query("SELECT * FROM `match`");
    return rows;
}

export async function getPlayers () {
  const [rows] = await pool.query(`SELECT player_id, nickname FROM player`);
  return rows;
}