<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/facturas">

<html>
    <head>
        <title>Transformar</title>
        <style>
            th, td {
                padding: 15px;
                text-align: left;
              }
        </style>
    </head>
<body>
    <table>
        <tr>
          <th>Numero</th>
          <th>Fecha</th>
          <th>Datos Emisor</th>
          <th>Datos Cliente</th>
          <th>Detalles Factura</th>
        </tr>
        <xsl:for-each select="factura">
        <tr>
            <td><xsl:value-of select="numero"/></td>
            <td><xsl:value-of select="fecha"/></td>
            <xsl:for-each select="datos_emisor">
            <td><xsl:value-of select="nombre"/><br/><xsl:value-of select="cif"/><br/><xsl:value-of select="telefono"/><br/></td>
            </xsl:for-each>
            <xsl:for-each select="datos_cliente">
            <td><xsl:value-of select="nombre"/><br/><xsl:value-of select="cif"/><br/><xsl:value-of select="telefono"/><br/></td>
            </xsl:for-each>
            <xsl:for-each select="detalle_factura">
            <td><xsl:value-of select="importe"/></td>
            </xsl:for-each>
        </tr>
        </xsl:for-each>
    </table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>