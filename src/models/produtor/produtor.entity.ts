import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  ManyToMany,
  JoinTable,
} from 'typeorm';
import { Cultura } from '../cultura/cultura.entity';

@Entity()
export class Produtor {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 500 })
  nome: string;

  @Column()
  documento: string; // unifica CPF ou RG

  @Column()
  fazenda: string;

  @Column()
  cidade: string;

  @Column()
  estado: string;

  @Column()
  areaTotal: number;

  @Column()
  areaAgricultavel: number;

  @Column()
  areaDeVegetacao: number;

  @ManyToMany(() => Cultura)
  @JoinTable()
  culturas: Cultura[];
}
