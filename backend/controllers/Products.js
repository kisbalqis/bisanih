import Products from "../models/ProductModel.js";

export const getProduct = async(req, res) =>{
    try {
        const response = await Products.findAll();
        res.status(200).json(response);
    } catch (error) {
        console.log(error.message);
    }
}

export const getProductsById = async(req, res) =>{
    try {
        const response = await Products.findOne({
            where:{
                id: req.params.id
            }
        });
        res.status(200).json(response);
    } catch (error) {
        console.log(error.message);
    }
}

export const createProducts = async(req, res) =>{
    const { nama_barang, harga_jual, harga_beli, stock } = req.body;
    try {
        await Products.create({
            nama_barang:nama_barang,
            harga_jual:harga_jual,
            harga_beli:harga_beli,
            stock:stock
        });
        res.status(201).json({msg: "Products Created"});
    } catch (error) {
        console.log(error.message);
    }
}

export const updateProducts = async(req, res) =>{
    try {
        await Products.update(req.body,{
            where:{
                id: req.params.id
            }
        });
        res.status(200).json({msg: "Products Updated"});
    } catch (error) {
        console.log(error.message);
    }
}

export const deleteProducts = async(req, res) =>{
    try {
        await Products.destroy({
            where:{
                id: req.params.id
            }
        });
        res.status(200).json({msg: "Products Deleted"});
    } catch (error) {
        console.log(error.message);
    }
}