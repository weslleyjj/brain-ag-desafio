import { Module } from '@nestjs/common';
import { DatabaseModule } from '../../database/database.module';
import { produtorProviders } from './produtor.providers';
import { ProdutorService } from '../../services/produtor/produtor.service';

@Module({
  imports: [DatabaseModule],
  providers: [...produtorProviders, ProdutorService],
})
export class ProdutorModule {}
