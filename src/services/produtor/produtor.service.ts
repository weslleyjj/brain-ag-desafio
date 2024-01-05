import { Inject, Injectable } from '@nestjs/common';
import { ProdutorDto } from 'src/models/dtos/ProdutorDto';
import { Produtor } from 'src/models/produtor/produtor.entity';
import { Repository, UpdateResult } from 'typeorm';

@Injectable()
export class ProdutorService {
  constructor(
    @Inject('PRODUTOR_REPOSITORY')
    private produtorRepository: Repository<Produtor>,
  ) {}

  async findAll(): Promise<Produtor[]> {
    return this.produtorRepository.find({relations: {culturas: true}});
  }

  async create(produtor: ProdutorDto): Promise<Produtor> {
    return this.produtorRepository.save(produtor);
  }

  async findOne(id: number): Promise<Produtor> {
    return this.produtorRepository.findOne({
      where: {
        id: id,
      },
      relations: {
        culturas: true
      }
    });
  }

  async update(
    id: number,
    produtorUpdated: ProdutorDto,
  ): Promise<Produtor> {
    return this.produtorRepository.save(produtorUpdated);
  }

  async remove(id: number): Promise<Produtor> {
    let produtor = await this.findOne(id);
    return this.produtorRepository.remove(produtor);
  }
}
