import { Module } from '@nestjs/common';
import { ProdutorService } from './services/produtor/produtor.service';
import { CulturaService } from './services/cultura/cultura.service';
import { ProdutorController } from './controllers/produtor.controller';
import { CulturaController } from './controllers/cultura.controller';
import { produtorProviders } from './models/produtor/produtor.providers';
import { databaseProviders } from './database/database.providers';
import { culturaProviders } from './models/cultura/cultura.providers';
import { DashboardController } from './controllers/dashboard.controller';

@Module({
  imports: [],
  controllers: [ProdutorController, CulturaController, DashboardController],
  providers: [...databaseProviders, ...produtorProviders, ...culturaProviders, ProdutorService, CulturaService],
})
export class AppModule {}
