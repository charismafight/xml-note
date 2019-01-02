# xslt
1999年成为w3c标准的转换型语言，作用是xml to xml
<xsl:stylesheet>和<xsl:transform>作为xslt根节点，效果完全相同

<?xml-stylesheet type="text/xsl" href="cdcatalog.xsl"?>指定本地同目录的cdcatalog.xsl作为转换文件，把原xml进行转换后传递给浏览器呈现


## <xsl:template match="/">
用于指明一套模板，从match开始匹配

## <xsl:value-of select="catalog/cd/title"/>
通过value-of select+xpath规范来选择对应路径下的节点的值


## <xsl:for-each>
```
      <xsl:for-each select="catalog/cd">
      <tr>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="artist"/></td>
      </tr>
      </xsl:for-each>
```
用来循环多个重复节点，在for-each节点下可以继续获取对应节点的xpath路径

## catalog/cd[artist='Bob Dylan']
筛选效果，使用&lt;和&gt;来做大于和小于判断

## <xsl:sort select="artist"/>
用于在for-each时进行排序，只需要放在foreach块的后一行即可

## <xsl:if test="price &gt; 10">
类似sort，增加if块（注意是块）来进行条件判断

## <xsl:choose>
多重条件，if估计是没有else的，choose会从上往下else（when when when……），otherwise指明else。
