<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
    <title>Movie Catalog</title>
    <style>
        body {
            font-family: Arial;
            background: linear-gradient(to right, #000000, #00115d);
        }
        h2 {
            text-align: center;
            color:white;
        }
        table {
            border-collapse: collapse;
            width: 60%;
            margin: auto;
            background: white;
        }
        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #333;
            color: white;
        }
    </style>
</head>

<body>
<h2>Movie Catalog</h2>

<table>
<tr>
    <th>Title</th>
    <th>Director</th>
    <th>Genre</th>
    <th>Year</th>
</tr>

<xsl:for-each select="movies/movie">
<tr>
    <td><xsl:value-of select="title"/></td>
    <td><xsl:value-of select="director"/></td>
    <td><xsl:value-of select="genre"/></td>
    <td><xsl:value-of select="year"/></td>
</tr>
</xsl:for-each>

</table>

</body>
</html>

</xsl:template>

</xsl:stylesheet>
