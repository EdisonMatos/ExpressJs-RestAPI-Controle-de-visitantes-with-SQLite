import { Router, Request, Response } from "express";
import { CreateAdminController } from "./controllers/admin/CreateAdminController";
import { CreateVisitanteController } from "./controllers/admin/CreateVisitanteController";

const router = Router();

router.get("/", (request: Request, response: Response) => {
  return response.json({ status: "Servidor rodando." });
});

router.post("/admin", new CreateAdminController().handle);
router.post("/visitantes", new CreateVisitanteController().handle);

export { router };
