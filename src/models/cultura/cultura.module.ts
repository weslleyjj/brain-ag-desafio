import { Module } from '@nestjs/common';
import { DatabaseModule } from '../../database/database.module';
import { culturaProviders } from './cultura.providers';
import { CulturaService } from '../../services/cultura/cultura.service';

@Module({
  imports: [DatabaseModule],
  providers: [...culturaProviders, CulturaService],
})
export class CulturaModule {}
