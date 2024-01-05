import { Inject, Injectable } from '@nestjs/common';
import { CulturaDto } from 'src/models/dtos/CulturaDto';
import { Cultura } from 'src/models/cultura/cultura.entity';
import { Repository, UpdateResult } from 'typeorm';

@Injectable()
export class CulturaService {
  constructor(
    @Inject('CULTURA_REPOSITORY')
    private culturaRepository: Repository<Cultura>,
  ) {}

  async findAll(): Promise<Cultura[]> {
    return this.culturaRepository.find();
  }

  async create(cultura: CulturaDto): Promise<Cultura> {
    return this.culturaRepository.save(cultura);
  }

  async findOne(id: number): Promise<Cultura> {
    return this.culturaRepository.findOne({
      where: {
        id: id,
      },
    });
  }

  async update(id: number, culturaUpdated: CulturaDto): Promise<UpdateResult> {
    return this.culturaRepository.update(id, {nome: culturaUpdated.nome});
  }

  async remove(id: number): Promise<Cultura> {
    let cultura = await this.findOne(id);
    return this.culturaRepository.remove(cultura);
  }
}
