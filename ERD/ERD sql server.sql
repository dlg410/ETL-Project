-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [World Happines Report] (
    [GDP per Capita] int  NOT NULL ,
    [Life Ladder] int  NOT NULL ,
    [Life Expectancy at Birth] int  NOT NULL ,
    [Freedom to Make Life Choices] int  NOT NULL ,
    [Generosity] int  NOT NULL ,
    [Perceptions of Corruption] int  NOT NULL ,
    [Confidence in National Government] int  NOT NULL 
)

CREATE TABLE [Human Development Index HDI] (
    [Education Index] int  NOT NULL ,
    [GNI Index] int  NOT NULL ,
    [Life Expectancy Index] int  NOT NULL 
)

CREATE TABLE [Education Index] (
    [Expected Years of Schooling] int  NOT NULL ,
    [Mean Years of Schooling] int  NOT NULL 
)

CREATE TABLE [Life Expectancy Index] (
    [Life expectancy at Birth] int  NOT NULL 
)

CREATE TABLE [Gross National Income] (
    [GDP per Capita] int  NOT NULL ,
    [GDP Total] int  NOT NULL ,
    [GNI per Capita] int  NOT NULL 
)

CREATE TABLE [Inequality-Adjusted HDI] (
    [Overall Loss in HDI Due to Inequality] int  NOT NULL ,
    [Inequality-Adjusted Education Index] int  NOT NULL ,
    [Inequality-Adjusted Income Index] int  NOT NULL ,
    [Inequality-Adjusted Life Expectancy Index] int  NOT NULL ,
    [Income Inequality, Gini Coefficient] int  NOT NULL ,
    [Inequality in Education] int  NOT NULL ,
    [Inequality in Income] int  NOT NULL ,
    [Inequality in Life Expectancy] int  NOT NULL 
)

ALTER TABLE [World Happines Report] WITH CHECK ADD CONSTRAINT [FK_World Happines Report_GDP per Capita_Life Ladder_Life Expectancy at Birth] FOREIGN KEY([GDP per Capita], [Life Ladder], [Life Expectancy at Birth])
REFERENCES [Human Development Index HDI] ([GNI Index], [Education Index], [Life Expectancy Index])

ALTER TABLE [World Happines Report] CHECK CONSTRAINT [FK_World Happines Report_GDP per Capita_Life Ladder_Life Expectancy at Birth]

ALTER TABLE [Education Index] WITH CHECK ADD CONSTRAINT [FK_Education Index_Expected Years of Schooling] FOREIGN KEY([Expected Years of Schooling])
REFERENCES [Human Development Index HDI] ([Education Index])

ALTER TABLE [Education Index] CHECK CONSTRAINT [FK_Education Index_Expected Years of Schooling]

ALTER TABLE [Education Index] WITH CHECK ADD CONSTRAINT [FK_Education Index_Mean Years of Schooling] FOREIGN KEY([Mean Years of Schooling])
REFERENCES [Human Development Index HDI] ([Education Index])

ALTER TABLE [Education Index] CHECK CONSTRAINT [FK_Education Index_Mean Years of Schooling]

ALTER TABLE [Life Expectancy Index] WITH CHECK ADD CONSTRAINT [FK_Life Expectancy Index_Life expectancy at Birth] FOREIGN KEY([Life expectancy at Birth])
REFERENCES [Human Development Index HDI] ([Life Expectancy Index])

ALTER TABLE [Life Expectancy Index] CHECK CONSTRAINT [FK_Life Expectancy Index_Life expectancy at Birth]

ALTER TABLE [Gross National Income] WITH CHECK ADD CONSTRAINT [FK_Gross National Income_GNI per Capita] FOREIGN KEY([GNI per Capita])
REFERENCES [Human Development Index HDI] ([GNI Index])

ALTER TABLE [Gross National Income] CHECK CONSTRAINT [FK_Gross National Income_GNI per Capita]

ALTER TABLE [Inequality-Adjusted HDI] WITH CHECK ADD CONSTRAINT [FK_Inequality-Adjusted HDI_Inequality-Adjusted Education Index_Inequality-Adjusted Income Index_Inequality-Adjusted Life Expectancy Index] FOREIGN KEY([Inequality-Adjusted Education Index], [Inequality-Adjusted Income Index], [Inequality-Adjusted Life Expectancy Index])
REFERENCES [Human Development Index HDI] ([Education Index], [GNI Index], [Life Expectancy Index])

ALTER TABLE [Inequality-Adjusted HDI] CHECK CONSTRAINT [FK_Inequality-Adjusted HDI_Inequality-Adjusted Education Index_Inequality-Adjusted Income Index_Inequality-Adjusted Life Expectancy Index]

ALTER TABLE [Inequality-Adjusted HDI] WITH CHECK ADD CONSTRAINT [FK_Inequality-Adjusted HDI_Inequality in Education_Inequality in Income_Inequality in Life Expectancy] FOREIGN KEY([Inequality in Education], [Inequality in Income], [Inequality in Life Expectancy])
REFERENCES [Human Development Index HDI] ([Education Index], [GNI Index], [Life Expectancy Index])

ALTER TABLE [Inequality-Adjusted HDI] CHECK CONSTRAINT [FK_Inequality-Adjusted HDI_Inequality in Education_Inequality in Income_Inequality in Life Expectancy]

COMMIT TRANSACTION QUICKDBD