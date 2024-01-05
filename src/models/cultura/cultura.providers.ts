import { DataSource } from 'typeorm';
import { Cultura } from './cultura.entity';

export const culturaProviders = [
  {
    provide: 'CULTURA_REPOSITORY',
    useFactory: (dataSource: DataSource) => dataSource.getRepository(Cultura),
    inject: ['DATA_SOURCE'], // Recomendado trocar por constante
  },
];
