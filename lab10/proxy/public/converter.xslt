<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="body">
<table>
    <xsl:for-each select="row">
      <tr>
        <td><xsl:value-of select="c1" /></td>
        <td><xsl:value-of select="c2" /></td>
      </tr>
  </xsl:for-each>
  </table>
</xsl:template>

</xsl:stylesheet>
