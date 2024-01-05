import { Module } from '@nestjs/common';
import { ProdutorService } from './services/produtor/produtor.service';
import { CulturaService } from './services/cultura/cultura.service';
import { ProdutorController } from './controllers/produtor.controller';
import { CulturaController } from './controllers/cultura.controller';

@Module({
  imports: [],
  controllers: [ProdutorController, CulturaController],
  providers: [ProdutorService, CulturaService],
})
export class AppModule {}
