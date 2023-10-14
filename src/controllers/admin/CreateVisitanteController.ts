import { Request, Response } from "express";
import { VisitanteInterface } from "../../models/interfaces/visitante/VisitanteRequest";
import { CreateVisitanteService } from "../../services/visitante/CreateVisitanteService";

class CreateVisitanteController {
  async handle(request: Request, response: Response) {
    const {
      cidade,
      comQuemEstudaBiblia,
      contadorFrequencia,
      dataBatismo,
      endereco,
      estudaBiblia,
      frequentaPeqGrupo,
      idade,
      nome,
      pequenoGrupo,
      religiao,
      sexo,
      telefone,
    }: VisitanteInterface = request.body;
    const createVisitanteService = new CreateVisitanteService();
    const visitante = await createVisitanteService.execute({
      cidade,
      comQuemEstudaBiblia,
      contadorFrequencia,
      dataBatismo,
      endereco,
      estudaBiblia,
      frequentaPeqGrupo,
      idade,
      nome,
      pequenoGrupo,
      religiao,
      sexo,
      telefone,
    });
    return response.json(visitante);
  }
}

export { CreateVisitanteController };
