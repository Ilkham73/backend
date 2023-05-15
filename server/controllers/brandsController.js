import { Brand } from '../models/models.js';


class BrandsController {

    async create(req, res) {
        const { name } = req.body;
        const brand = await Brand.create({ name })
        return res.json(brand)
    }

    async getAll(req, res) {
        const brands = await Brand.findAll()
        return res.json(brands)
    }
}
const brandsController = new BrandsController()
export { brandsController };