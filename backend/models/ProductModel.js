import {Sequelize} from "sequelize";
import db from "../config/Database.js";

const {DataTypes} = Sequelize;
const Products = db.define('products',{
    nama_barang: {
        type: DataTypes.STRING
    },
    harga_jual: {
        type: DataTypes.INTEGER
    },
    harga_beli: {
        type: DataTypes.INTEGER
    },
    stock: {
        type: DataTypes.INTEGER
    },
},{
    freezeTableName:true
});


(async()=>{
    await db.sync();
})();

export default Products;