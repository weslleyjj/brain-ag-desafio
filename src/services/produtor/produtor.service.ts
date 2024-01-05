import { BadRequestException, Inject, Injectable } from '@nestjs/common';
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
    this.validateProdutor(produtor);
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

  private validateProdutor(produtor: ProdutorDto) {
    // Produtor deve existir
    if (!produtor) {
      throw new BadRequestException('Corpo de requisição vazio.')
    }

    // 1 - O sistema deverá validar CPF e CNPJ digitados incorretamente.
    let documento = produtor.documento && produtor.documento.replace(/[^\d]+/g, '');
    
    if(documento) {
      let documentoValido = documento.length == 11 ? this.cpfValido(documento) : this.cnpjValido(documento);
      if (!documentoValido) {
        throw new BadRequestException('Documento de CPF/CNPJ inválido.')
      }

    } else {
      throw new BadRequestException('Documento de CPF/CNPJ não foi preenchido')
    }

    // 2 - A soma de área agrícultável e vegetação, não deverá ser maior que a área total da fazenda

    if (produtor.areaAgricultavel && produtor.areaDeVegetacao && produtor.areaTotal) {
      
      if (produtor.areaAgricultavel + produtor.areaDeVegetacao > produtor.areaTotal) {
        throw new BadRequestException('A soma de área agrícultável e vegetação está superior a área total da propriedade.')
      }

    } else {
      throw new BadRequestException('Dados de area da propriedade não informados.')
    }
  }

  // Função pronta extraída do devmedia
  private cpfValido(cpf: string): boolean {
    var Soma;
    var Resto;
    Soma = 0;
    if (cpf == "00000000000") return false;

    for (let i=1; i<=9; i++) Soma = Soma + parseInt(cpf.substring(i-1, i)) * (11 - i);
    Resto = (Soma * 10) % 11;

      if ((Resto == 10) || (Resto == 11))  Resto = 0;
      if (Resto != parseInt(cpf.substring(9, 10)) ) return false;

    Soma = 0;
    for (let i = 1; i <= 10; i++) Soma = Soma + parseInt(cpf.substring(i-1, i)) * (12 - i);
    Resto = (Soma * 10) % 11;

    if ((Resto == 10) || (Resto == 11))  Resto = 0;
    if (Resto != parseInt(cpf.substring(10, 11) ) ) return false;
    return true;
  }

  // Função pronta extraída do dev-solucoes
  private cnpjValido(cnpj): boolean {

    if (cnpj.length != 14)
        return false;

    let tamanhoTotal = cnpj.length - 2
    let cnpjSemDigitos = cnpj.substring(0, tamanhoTotal);
    let digitosVerificadores = cnpj.substring(tamanhoTotal);
    let soma = 0;
    let pos = tamanhoTotal - 7;
    for (let i = tamanhoTotal; i >= 1; i--) {
        soma += cnpjSemDigitos.charAt(tamanhoTotal - i) * pos--;
        if (pos < 2)
            pos = 9;
    }
    let resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
    if (resultado != digitosVerificadores.charAt(0))
        return false;

    tamanhoTotal = tamanhoTotal + 1;
    cnpjSemDigitos = cnpj.substring(0, tamanhoTotal);
    soma = 0;
    pos = tamanhoTotal - 7;
    for (let i = tamanhoTotal; i >= 1; i--) {
        soma += cnpjSemDigitos.charAt(tamanhoTotal - i) * pos--;
        if (pos < 2)
            pos = 9;
    }

    resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
    if (resultado != digitosVerificadores.charAt(1))
        return false;

    return true;
  }
}
