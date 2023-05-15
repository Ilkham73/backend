import express from 'express';
import { userController } from '../controllers/userControllers.js'

const userRouter = express();

 
userRouter.post('/registration')
 
userRouter.post('/login' )
 
userRouter.get('/auth', userController.auth);

export { userRouter };