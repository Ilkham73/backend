import { sequelize } from '../db.js';
import { DataTypes } from 'sequelize';

const User = sequelize.define('user', {
    id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
    email: { type: DataTypes.STRING, unique: true },
    password: { type: DataTypes.STRING },
    role: { type: DataTypes.STRING, defaultValue: "USER"},
});

const Products = sequelize.define('products', {
    id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
    name: { type: DataTypes.STRING, unique: true, allowNull: false },
    description: { type: DataTypes.STRING },
    image: {  type: DataTypes.STRING },
    price: {  type: DataTypes.INTEGER, allowNull: false },
});

const Categories = sequelize.define('categories', {
    id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
    name: { type: DataTypes.STRING, allowNull: false },
});

const Brand = sequelize.define('brand', {
    id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
    name: { type: DataTypes.STRING, allowNull: false },
})

const CategoriesBrand = sequelize.define('categories_brand', {
    id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
})


Categories.hasMany(Products);
Products.belongsTo(Categories);
Brand.hasMany(Products);
Products.belongsTo(Brand);
Categories.belongsToMany(Brand, { through: CategoriesBrand});
Brand.belongsToMany(Categories, { through: CategoriesBrand});
export { Brand, Categories, CategoriesBrand, Products, User };