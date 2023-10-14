-- CreateTable
CREATE TABLE "visitantes" (
    "id" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "sexo" TEXT NOT NULL,
    "endereco" TEXT NOT NULL,
    "telefone" TEXT NOT NULL,
    "cidade" TEXT NOT NULL,
    "idade" INTEGER NOT NULL,
    "religiao" TEXT NOT NULL,
    "frequentaPeqGrupo" BOOLEAN NOT NULL,
    "pequenoGrupo" TEXT NOT NULL,
    "estudaBiblia" BOOLEAN NOT NULL,
    "comQuemEstudaBiblia" TEXT NOT NULL,
    "dataBatismo" TIMESTAMP(3) NOT NULL,
    "contadorFrequencia" INTEGER NOT NULL,
    "criadoEm" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "atualizadoEm" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "visitantes_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "visitas" (
    "id" TEXT NOT NULL,
    "diaDaVisita" TEXT NOT NULL,
    "visitanteId" TEXT,
    "criadoEm" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "atualizadoEm" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "visitas_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "visitas" ADD CONSTRAINT "visitas_visitanteId_fkey" FOREIGN KEY ("visitanteId") REFERENCES "visitantes"("id") ON DELETE SET NULL ON UPDATE CASCADE;
