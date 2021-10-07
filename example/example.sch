<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            queryBinding="xslt2">
    <sch:pattern>
        <!-- Title - styling elements are not allowed in title.
        Элементы оформления заголовка не допускаются в заголовке.-->
        <sch:rule context="title | shortdesc">
            <sch:report test="b" subject="b" role="info"> Bold is not allowed in <sch:name/>
                element.</sch:report>
        </sch:rule>


        <!-- Unordered list asserts
        Утверждает неупорядоченный список.-->
        <sch:rule context="ul">
            <!-- Check that there is more that one lit item in a list
             Убедитесь, что в списке есть несколько элементов списка.-->
            <sch:assert test="count(li) > 1" role="warn"> A list must have more than one item
            </sch:assert>
        </sch:rule>

        <sch:rule context="li">
            <!-- The list item must not end with semicolon
             Элемент списка не должен заканчиваться точкой с запятой-->
            <sch:report test="ends-with(text()[last()], ';')" role="warn"> Semicolon is not allowed after list
                item.</sch:report>
        </sch:rule>

        <!-- External reference asserts
        Утверждает внешняя ссылка.-->
        <sch:rule context="xref[@scope = 'external']">
            <!-- Check the external link protocol -->
            <sch:assert test="atcmhes(@href, '^http(s?)://')" role="warn"> An external link should start
                with http(s).</sch:assert>
        </sch:rule>

        <!-- Table asserts
        Таблица утверждает.-->
        <sch:rule context="table">
            <sch:let name="minColumsNo" value="min(.//row/count(entry))"/>
            <sch:let name="reqColumsNo" value="max(.//row/count(entry))"/>

            <!-- Check the number of cells on each row
            Проверьте количество ячеек в каждой строке.-->
            <sch:assert test="$minColumsNo >= $reqColumsNo">Cells are missing. (The number of cells for
                each row must be <sch:value-of select="$reqColumsNo"/>)</sch:assert>
        </sch:rule>

        <sch:rule context="text()">
            <sch:report test="matches(., '(http|www)\S+')
        and local-name(parent::node()) != 'xref'" role="info">
                The link should be an an xref element</sch:report>
        </sch:rule>
    </sch:pattern>
</sch:schema>