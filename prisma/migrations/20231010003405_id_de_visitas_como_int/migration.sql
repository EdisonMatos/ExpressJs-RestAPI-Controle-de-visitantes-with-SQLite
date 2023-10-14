/*
  Warnings:

  - The primary key for the `visitas` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `visitas` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "visitas" DROP CONSTRAINT "visitas_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "visitas_pkey" PRIMARY KEY ("id");
