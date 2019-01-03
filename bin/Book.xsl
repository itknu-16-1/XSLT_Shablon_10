<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>	
	<body>
 <xsl:apply-templates/>  
	</body>
</html>	
</xsl:template>
<xsl:template match="book">
	<table border="1">
		<tr>
		<th>#</th>
		<th>Название</th>
		<th>Автор</th>
		<th>Цена</th>
		<th>Количество</th>	 
		</tr>
	<tr>
	 <td><xsl:apply-templates select="@id"/>  </td>
	 <td><xsl:apply-templates select="title"/> </td>
	 <td><xsl:apply-templates select="author"/>  </td>
	 <td><xsl:apply-templates select="price"/>  </td>
	 <td><xsl:apply-templates select="count"/>  </td>
	</tr>
  </table>
  </xsl:template>
</xsl:stylesheet>