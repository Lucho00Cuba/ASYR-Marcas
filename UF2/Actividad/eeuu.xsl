<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/pais">

<html>
    <head>
        <title><xsl:value-of select="nombre"/></title>
    </head>
<body>
    <p><xsl:value-of select="nombre"/></p>
    <p>Poblacion: <xsl:value-of select="poblacion"/></p>
    <p>Continente: <xsl:value-of select="continente"/></p>
    <p>Capital: <xsl:value-of select="capital"/></p>
    <xsl:for-each select="coordenadas">
    <p>Coordenadas:</p> 
    <p>Latitud: <xsl:value-of select="latitud"/></p>
    <p>Longitud: <xsl:value-of select="longitud"/></p>
    </xsl:for-each>
    <xsl:for-each select="coordenadas">
    <p>Coordenadas:</p> 
    <p>Latitud: <xsl:value-of select="latitud"/></p>
    <p>Longitud: <xsl:value-of select="longitud"/></p>
    </xsl:for-each>
    <xsl:for-each select="imagenes">
    <p>Imagenes:</p>
    <p>URL: <xsl:value-of select="url"/></p>
    <p>Descripcion: <xsl:value-of select="descripcion"/></p>
    <p>Nombre: <xsl:value-of select="nombre"/></p>
    </xsl:for-each>

</body>
</html>

</xsl:template>
</xsl:stylesheet>