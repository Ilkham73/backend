import  express  from 'express';
import {config} from 'dotenv'
import {sequelize} from './db.js'
import * as models from './model/model.js'
import cors from 'cors'
import { rootRouter } from './routes/index.js'



const mod = models;
config(); 
const app = express();

const PORT = process.env.PORT || 5555;
const HOST = process.env.HOST || 'localhost'

app.use(cors());
app.use(express.json());
app.use('/api', rootRouter);

const start = async () => {
    try {
        await sequelize.authenticate();
        await sequelize.sync(); 
        app.listen(PORT, HOST, () => {
            console.log(`Server start from http://${HOST}:${PORT}`)
        })
    } catch(e) {
console.log(e)
    }
}
start();
