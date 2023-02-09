<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/Biblioteca.Anime">
        <html>
            <body>
                <table border="2">
                    <tr bgcolor="#9acd32">
                        <th>Titulo</th>
                        <th>Autor</th>
                        <th>Descripción</th>
                    </tr>
                    <xsl:for-each select="Anime">
                        <tr>
                            <td><xsl:value-of select="Titulo" /></td>
                            <td><xsl:value-of select="Autor" /></td>
                            <td><xsl:value-of select="Descripción" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>