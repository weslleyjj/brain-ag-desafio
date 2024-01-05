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
        entities: [__dirname + '/../**/*.entity{.ts,.js}'],
        synchronize: true, // Não usar em prod
      });

      return dataSource.initialize();
    },
  },
];
