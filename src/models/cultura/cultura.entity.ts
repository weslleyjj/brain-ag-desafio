import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Cultura {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 500 })
  nome: string;
}
