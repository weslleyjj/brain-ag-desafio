import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Patch,
  Post,
} from '@nestjs/common';
import { ProdutorDto } from 'src/models/dtos/ProdutorDto';
import { ProdutorService } from 'src/services/produtor/produtor.service';

@Controller('produtor')
export class ProdutorController {
  constructor(private readonly produtorService: ProdutorService) {}

  @Post()
  create(@Body() createProdutorDto: ProdutorDto) {
    return this.produtorService.create(createProdutorDto);
  }

  @Get()
  findAll() {
    return this.produtorService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.produtorService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateProdutorDto: ProdutorDto) {
    return this.produtorService.update(+id, updateProdutorDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.produtorService.remove(+id);
  }
}
