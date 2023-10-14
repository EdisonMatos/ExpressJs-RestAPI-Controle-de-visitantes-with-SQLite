-- CreateTable
CREATE TABLE "admin" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "email" TEXT NOT NULL,
    "senha" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "visitantes" (
    "id" TEXT NOT NULL PRIMARY KEY,
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
    "dataBatismo" DATETIME NOT NULL,
    "contadorFrequencia" INTEGER NOT NULL,
    "criadoEm" DATETIME DEFAULT CURRENT_TIMESTAMP,
    "atualizadoEm" DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- CreateTable
CREATE TABLE "visitas" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "diaDaVisita" TEXT NOT NULL,
    "visitanteId" TEXT,
    "criadoEm" DATETIME DEFAULT CURRENT_TIMESTAMP,
    "atualizadoEm" DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "visitas_visitanteId_fkey" FOREIGN KEY ("visitanteId") REFERENCES "visitantes" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);
