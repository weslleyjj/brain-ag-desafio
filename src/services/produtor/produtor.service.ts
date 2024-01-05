import { Inject, Injectable } from '@nestjs/common';
import { EstatisticasDto } from 'src/models/dtos/EstatisticasDto';
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

  async retrieveStatistics(): Promise<EstatisticasDto>{
    let querysResult = await Promise.all([
      await this.produtorRepository.query("select count(p.id) from produtor p"),
      await this.produtorRepository.query("select sum(p.\"areaTotal\") from produtor p"),
      await this.produtorRepository.query("select p.estado as estado, count(p.id) as total from produtor p group by p.estado"),
      await this.produtorRepository.query("select c.nome as cultura, count(p.id) as total from produtor p join produtor_culturas_cultura pc on p.id = pc.\"produtorId\" join cultura c on c.id = pc.\"culturaId\" group by c.nome"),
      await this.produtorRepository.query("select sum(p.\"areaAgricultavel\") from produtor p"),
      await this.produtorRepository.query("select sum(p.\"areaDeVegetacao\") from produtor p")
    ]);

    let response: EstatisticasDto = {
      totalFazendas: +querysResult[0][0].count, 
      totalDeArea: +querysResult[1][0].sum,
      estatisticasEstado: querysResult[2].map(it => { return {estado: it.estado, total: +it.total}}), // map para converter para number
      estatisticasCultura: querysResult[3].map(it => { return {cultura: it.cultura, total: +it.total}}), // map para converter para number
      totalAreaAgriculturavel: +querysResult[4][0].sum,
      totalAreaVegetacao: +querysResult[5][0].sum
    }    

    return response;
  }
}
