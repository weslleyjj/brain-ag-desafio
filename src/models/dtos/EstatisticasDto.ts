export interface EstatisticasDto {
    totalFazendas: number;
    totalDeArea: number;
    estatisticasEstado: EstatisticasEstado[];
    estatisticasCultura: EstatisticasCultura[];
    totalAreaAgriculturavel: number;
    totalAreaVegetacao: number;
}

export interface EstatisticasEstado { // Para resgatar o total de fazendas por estado
    estado: string;
    total: number;
}

export interface EstatisticasCultura { // Para resgatar o total de culturas por fazenda
    cultura: string;
    total: number;
}