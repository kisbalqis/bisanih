import express from "express";
import { getUsers, Register, Login, Logout } from "../controllers/Users.js";
import { getProduct, createProducts, updateProducts } from "../controllers/Products.js";
import { verifyToken } from "../middleware/VerifyToken.js";
import { refreshToken } from "../controllers/RefreshToken.js";
 
const router = express.Router();
 
// user
router.get('/users', verifyToken, getUsers);
router.post('/users', Register);
router.post('/login', Login);
router.get('/token', refreshToken);
router.delete('/logout', Logout);
// product
router.get('/products', getProduct);
router.post('/products', createProducts);
router.patch('/edit/:id', updateProducts);
 
export default router;