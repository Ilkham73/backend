import express from 'express';
import { Brand } from '../model/model.js';
import {ApiError} from '../error/ApiError.js'
const brandRouter = express();


brandRouter.post( '/', async (req, res) => {
    try {
    const {name} = req.body;
const brand = await Brand.create ({name})
return res.json(brand)
}
catch(e) {
    console.log(e)
}
})

brandRouter.get('/', async (rew, res) => {
    try {
        const brand = await Brand.findAll()
        return res.json(brand)
    } catch(e) {
        console.log(e)
    }
})

brandRouter.post('/:id', async(req, res, next)=>{
    const {id} = req.params
    const brand = await Brand.findOne({where: {id}})
    if (!brand) {
            return next(res.json(ApiError.badRequest ('Запись не найдена')))
    }
    return res.json(brand)
})


export { brandRouter };