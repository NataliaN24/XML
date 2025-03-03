<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:template match="/">
<html>
<body>
<table>
<tr>
<td>1.
<xsl:for-each select="//track">
<xsl:if test="@length='4:04'">
<li><xsl:value-of select="text()"/> </li>
</xsl:if>
</xsl:for-each>
</td>
</tr>
<tr>
<td>2.
<xsl:for-each select="//track">
<xsl:if test="string-length(.) &lt; 15">
<li><xsl:value-of select="text()"/> (<xsl:value-of select="string-length(.)"/>)</li>
</xsl:if>
</xsl:for-each>
</td>
</tr>
<tr>
<td>3.
<xsl:for-each select="//track">
<xsl:if test="position() mod 2 = 0">
<li><xsl:value-of select="text()"/> </li>
</xsl:if>
</xsl:for-each>
</td>
</tr>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
