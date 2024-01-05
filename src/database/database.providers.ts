import { Cultura } from 'src/models/cultura/cultura.entity';
import { Produtor } from 'src/models/produtor/produtor.entity';
import { DataSource } from 'typeorm';

export const databaseProviders = [
  {
    provide: 'DATA_SOURCE',
    useFactory: async () => {
      const dataSource = new DataSource({
        type: 'postgres',
        host: 'localhost',
        port: 5432,
        username: 'postgres',
        password: 'postgres',
        database: 'brain-ag-desafio',
        entities: [Produtor, Cultura],
        synchronize: true, // Não usar em prod
      });

      return dataSource.initialize();
    },
  },
];
