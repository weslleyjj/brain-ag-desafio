import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Patch,
  Post,
} from '@nestjs/common';
import { CulturaService } from 'src/services/cultura/cultura.service';
import { CulturaDto } from '../models/dtos/CulturaDto';

@Controller('cultura')
export class CulturaController {
  constructor(private readonly culturaService: CulturaService) {}

  @Post()
  create(@Body() createCulturaDto: CulturaDto) {
    return this.culturaService.create(createCulturaDto);
  }

  @Get()
  findAll() {
    return this.culturaService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.culturaService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateCulturaDto: CulturaDto) {
    return this.culturaService.update(+id, updateCulturaDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.culturaService.remove(+id);
  }
}
