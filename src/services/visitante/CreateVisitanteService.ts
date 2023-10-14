import prismaClient from "../../prisma";
import { VisitanteInterface } from "../../models/interfaces/visitante/VisitanteRequest";

class CreateVisitanteService {
  async execute({
    nome,
    telefone,
    cidade,
    comQuemEstudaBiblia,
    contadorFrequencia,
    dataBatismo,
    endereco,
    estudaBiblia,
    frequentaPeqGrupo,
    idade,
    pequenoGrupo,
    religiao,
    sexo,
  }: VisitanteInterface) {
    const visitanteCriado = prismaClient.visitante.create({
      data: {
        nome,
        telefone,
        cidade,
        comQuemEstudaBiblia,
        contadorFrequencia,
        dataBatismo,
        endereco,
        estudaBiblia,
        frequentaPeqGrupo,
        idade,
        pequenoGrupo,
        religiao,
        sexo,
      },
      select: {
        id: true,
        nome: true,
      },
    });

    return visitanteCriado;
  }
}

export { CreateVisitanteService };
