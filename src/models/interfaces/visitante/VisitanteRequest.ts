export interface VisitanteInterface {
  nome: string;
  sexo: string;
  endereco: string;
  telefone: string;
  cidade: string;
  idade: number;
  religiao: string;
  frequentaPeqGrupo: boolean;
  pequenoGrupo: string;
  estudaBiblia: boolean;
  comQuemEstudaBiblia: string;
  dataBatismo: string | Date;
  contadorFrequencia: number;
}
