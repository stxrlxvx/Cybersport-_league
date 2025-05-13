import express from 'express';
import { getMatches, getPlayers } from './database.js';  // Імпортуємо обидві функції
import path from 'path';
import { fileURLToPath } from 'url';

const app = express();

// Налаштування EJS
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
app.use(express.static(path.join(__dirname, 'public')));

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// Роут для виводу матчів
app.get('/match', async (req, res) => {
  res.render('match', { title: 'Match' });
});

// API для матчів
app.get('/api/match', async (req, res) => {
  try {
    const match_info = await getMatches();
    res.json(match_info);
  } catch (err) {
    console.error(err);
    res.status(500).send('Помилка при завантаженні даних');
  }
});

// Роут для виводу гравців
app.get('/players', (req, res) => {
  res.render('players', { title: 'Players' });
});

// API для гравців
app.get('/api/players', async (req, res) => {
  try {
    const players = await getPlayers();
    res.json(players);
  } catch (err) {
    console.error(err);
    res.status(500).send('Помилка при завантаженні гравців');
  }
});

// Запуск сервера
app.listen(3000, () => {
  console.log('Сервер запущено на http://localhost:3000');
});