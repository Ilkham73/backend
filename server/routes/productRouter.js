import express from 'express';
import { productController } from '../controllers/productController.js'


const productRouter = express();

productRouter.get('/', productController.getAll)
productRouter.get('/:id', productController.getOne)

export { productRouter };