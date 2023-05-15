import  express  from 'express';
import { userRouter } from './userRouter.js'
import { categoryRouter } from './categoryRouter.js'
import { brandRouter } from './brandRouter.js'
import { productRouter } from './productRouter.js'

const rootRouter = express();
rootRouter.use('/user', userRouter);
rootRouter.use('/category', categoryRouter);
rootRouter.use('/brands', brandRouter);
rootRouter.use('/product', productRouter);

export { rootRouter };