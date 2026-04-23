<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <style>
          table { border-collapse: collapse; width: 100%; font-family: Arial; }
          th { background-color: #2c3e50; color: white; padding: 10px; }
          td { border: 1px solid #ddd; padding: 8px; text-align: center; }
          tr:nth-child(even) { background-color: #f2f2f2; }
          h2 { color: #2c3e50; }
        </style>
      </head>
      <body>
        <h2>Inventario de Hardware de Red (Versión XML/XSL)</h2>
        <table>
          <tr>
            <th>ID</th>
            <th>Tipo</th>
            <th>Marca</th>
            <th>Modelo</th>
            <th>Precio (€)</th>
          </tr>
          <xsl:for-each select="inventario/dispositivo">
            <tr>
              <td><xsl:value-of select="@id"/></td>
              <td><xsl:value-of select="tipo"/></td>
              <td><xsl:value-of select="marca"/></td>
              <td><xsl:value-of select="modelo"/></td>
              <td><xsl:value-of select="precio"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>