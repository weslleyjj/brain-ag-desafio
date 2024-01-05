import { Controller, Get } from '@nestjs/common';
import { CulturaService } from 'src/services/cultura/cultura.service';
import { ProdutorService } from 'src/services/produtor/produtor.service';

@Controller('dashboard')
export class DashboardController {
  constructor(private readonly produtorService: ProdutorService) {}

  @Get()
  retrieveTotalItems() {
    return this.produtorService.retrieveStatistics();
  }
}
