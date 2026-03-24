<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Catalogo</title>
                <style>
                    table { border-collapse: collapse; width: 80%; margin: 20px auto; font-family:
        Arial; }
                    th, td { border: 1px solid #dddddd; padding: 8px; text-align: center; }
                    th { background-color: #4CAF50; color: white; }
                </style>
            </head>
            <body>
                <h2 style="text-align: center;">Catalogo de Componentes</h2>
                <table>
                    <tr>
                        <th>Marca</th>
                        <th>Modelo</th>
                        <th>Tipo</th>
                        <th>Precio (Sin IVA)</th>
                        <th>Precio (Con IVA)</th>
                    </tr>

                    <xsl:for-each select="catalogo/equipo">

                        <xsl:sort select="precio_sin_iva" data-type="number" order="ascending" />

                    <tr>
                            <xsl:choose>
                                <xsl:when test="stock = 'alta'">
                                    <xsl:attribute name="style">background-color: #d4edda;</xsl:attribute>
                                </xsl:when>
                                <xsl:when test="stock = 'media'">
                                    <xsl:attribute name="style">background-color: #fff3cd;</xsl:attribute>
                                </xsl:when>
                                <xsl:when test="stock = 'baja'">
                                    <xsl:attribute name="style">background-color: #f8d7da;</xsl:attribute>
                                </xsl:when>
                            </xsl:choose>

                            <td>
                                <xsl:value-of select="marca" />
                            </td>
                            <td>
                                <xsl:value-of select="modelo" />
                            </td>
                            <td>
                                <xsl:value-of select="tipo" />
                            </td>
                            <td><xsl:value-of select="precio_sin_iva" /> </td>

                            <td><xsl:value-of select="precio_sin_iva * (1 + tasa_iva)" /> €</td>
                        </tr>

                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>