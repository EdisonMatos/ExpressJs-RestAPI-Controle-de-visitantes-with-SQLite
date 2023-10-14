import prismaClient from "../../prisma";
import { AdminInterface } from "../../models/interfaces/admin/AdminRequest";

class CreateAdminService {
  async execute({ email, senha }: AdminInterface) {
    if (!email) {
      throw new Error("Email incorreto");
    }

    const usuarioJaExiste = await prismaClient.admin.findFirst({
      where: {
        email: email,
      },
    });

    if (usuarioJaExiste) {
      throw new Error("Email já existe.");
    }

    const adminCriado = prismaClient.admin.create({
      data: {
        email,
        senha,
      },
      select: {
        id: true,
        email: true,
      },
    });

    return adminCriado;
  }
}

export { CreateAdminService };
