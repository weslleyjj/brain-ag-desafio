import { DataSource } from 'typeorm';
import { Produtor } from './produtor.entity';

export const produtorProviders = [
  {
    provide: 'PRODUTOR_REPOSITORY',
    useFactory: (dataSource: DataSource) => dataSource.getRepository(Produtor),
    inject: ['DATA_SOURCE'], // Recomendado trocar por constante
  },
];
