import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Produtor {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 500 })
  nome: string;

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
}
