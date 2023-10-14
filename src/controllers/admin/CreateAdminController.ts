import { Request, Response } from "express";
import { CreateAdminService } from "../../services/admin/CreateAdminService";
import { AdminInterface } from "../../models/interfaces/admin/AdminRequest";

class CreateAdminController {
  async handle(request: Request, response: Response) {
    const { email, senha }: AdminInterface = request.body;
    const createAdminService = new CreateAdminService();
    const admin = await createAdminService.execute({
      email,
      senha,
    });
    return response.json(admin);
  }
}

export { CreateAdminController };
