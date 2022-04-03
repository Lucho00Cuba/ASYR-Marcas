<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/concesionario">

Nombre: <xsl:value-of select="nombre"/>
ID: <xsl:value-of select="@id"/>
CIF: <xsl:value-of select="cif"/>
COCHES: <xsl:value-of select="count(coches/coche)"/>

<xsl:for-each select="coches/coche">
MARCA: <xsl:value-of select="marca"/>
MODELO: <xsl:value-of select="modelo"/>
PRECIO: <xsl:value-of select="precio"/> $
</xsl:for-each>

</xsl:template>
</xsl:stylesheet>