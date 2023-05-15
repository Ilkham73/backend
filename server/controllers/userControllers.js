class UserController {
    async auth(req, res) {
        return res.json({ masseg: 'Пользователь'})
    }
}
const userController  = new UserController();
export { userController }