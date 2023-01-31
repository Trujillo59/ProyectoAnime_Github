<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<body>
<h2>Lista de Animes</h2>
<table border="1">
<tr>
<th>Título</th>
<th>Autor</th>
<th>Género</th>
<th>Fecha de Lanzamiento</th>
<th>Duración (Temporadas/Capítulos)</th>
<th>Descripción</th>
</tr>
<xsl:for-each select="Biblioteca.Anime/*">
<tr>
<td><xsl:value-of select="Titulo" /></td>
<td><xsl:value-of select="Autor" /></td>
<td><xsl:value-of select="Genero" /></td>
<td><xsl:value-of select="Fecha.de.Lanzamiento" /></td>
<td>
<xsl:value-of select="Duracion/Temporadas" /> temporadas /
<xsl:value-of select="Duracion/Capitulos" /> capítulos
</td>
<td><xsl:value-of select="Descripcion" /></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>