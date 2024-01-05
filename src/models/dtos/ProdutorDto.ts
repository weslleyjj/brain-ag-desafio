import { Cultura } from "../cultura/cultura.entity";

export interface ProdutorDto {
  id: number;
  nome: string;
  documento: string;
  fazenda: string;
  cidade: string;
  estado: string;
  areaTotal?: number;
  areaAgricultavel?: number;
  areaDeVegetacao?: number;
  culturas?: Cultura[];
}
