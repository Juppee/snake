<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">

<html>


<body>

<h2>Pistetaulukko</h2>


<table style="background-color: #d9d9d9" border="0">


<tr bgcolor="#000">

<th style="
  color: white;
  font-family: sans-serif;
  font-variant: small-caps;">nimi</th>

  <th style="
    color: white;
    font-family: sans-serif;
    font-variant: small-caps;">pisteet</th>

</tr>


<xsl:for-each select="taulukko/tulos">

<xsl:sort select="pisteet" order="descending" data-type="number"/>


<tr>


<td>

<xsl:value-of select="nimi"/>

</td>


<td>

<xsl:value-of select="pisteet"/>

</td>

</tr>

</xsl:for-each>

</table>

<button onclick="location.href='index.html'">Pelaa uudelleen</button>

</body>

</html>

</xsl:template>

</xsl:stylesheet>
