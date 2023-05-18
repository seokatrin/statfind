-- CreateTable
CREATE TABLE "Article" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "Article_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Title" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "text" TEXT NOT NULL,
    "articleId" INTEGER,

    CONSTRAINT "Title_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Title" ADD CONSTRAINT "Title_articleId_fkey" FOREIGN KEY ("articleId") REFERENCES "Article"("id") ON DELETE SET NULL ON UPDATE CASCADE;
