-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "World Happines Report" (
    "GDP per Capita" int   NOT NULL,
    "Life Ladder" int   NOT NULL,
    "Life Expectancy at Birth" int   NOT NULL,
    "Freedom to Make Life Choices" int   NOT NULL,
    "Perceptions of Corruption" int   NOT NULL,
    "Confidence in National Government" int   NOT NULL
);

CREATE TABLE "Human Development Index HDI" (
    "Education Index" int   NOT NULL,
    "GNI Index" int   NOT NULL,
    "Life Expectancy Index" int   NOT NULL
);

CREATE TABLE "Education Index" (
    "Expected Years of Schooling" int   NOT NULL,
    "Mean Years of Schooling" int   NOT NULL
);

CREATE TABLE "Life Expectancy Index" (
    "Life expectancy at Birth" int   NOT NULL
);

CREATE TABLE "Gross National Income" (
    "GDP per Capita" int   NOT NULL,
    "GDP Total" int   NOT NULL,
    "GNI per Capita" int   NOT NULL
);

ALTER TABLE "World Happines Report" ADD CONSTRAINT "fk_World Happines Report_GDP per Capita" FOREIGN KEY("GDP per Capita")
REFERENCES "Gross National Income" ("GNI per Capita");

ALTER TABLE "World Happines Report" ADD CONSTRAINT "fk_World Happines Report_Life Expectancy at Birth" FOREIGN KEY("Life Expectancy at Birth")
REFERENCES "Life Expectancy Index" ("Life expectancy at Birth");

ALTER TABLE "Human Development Index HDI" ADD CONSTRAINT "fk_Human Development Index HDI_Education Index_Education Index" FOREIGN KEY("Education Index", "Education Index")
REFERENCES "Education Index" ("Expected Years of Schooling", "Mean Years of Schooling");

ALTER TABLE "Human Development Index HDI" ADD CONSTRAINT "fk_Human Development Index HDI_GNI Index" FOREIGN KEY("GNI Index")
REFERENCES "Gross National Income" ("GNI per Capita");

ALTER TABLE "Human Development Index HDI" ADD CONSTRAINT "fk_Human Development Index HDI_Life Expectancy Index" FOREIGN KEY("Life Expectancy Index")
REFERENCES "Life Expectancy Index" ("Life expectancy at Birth");

