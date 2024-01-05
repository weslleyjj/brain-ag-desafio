export interface ProdutorDto {
  id: number;
  nome: string;
  fazenda: string;
  cidade: string;
  estado: string;
  areaTotal?: number;
  areaAgricultavel?: number;
  areaDeVegetacao?: number;
}
