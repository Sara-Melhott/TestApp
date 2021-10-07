<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            queryBinding="xslt2">
    <sch:pattern>
        <sch:rule context="actual">
            <sch:assert test="count(./if-no-outer-status) &lt; 2">
                Тег if-no-outer-status должен присутсвовать не более 1 раза.
            </sch:assert>
        </sch:rule>
        <sch:rule context="and|or">
            <sch:report test="ancestor::select-where and child::is-null-or-empty">
                Тега is-null-or-empty не должно быть.
            </sch:report>
            <sch:report test="ancestor::if-what and child::in">
                Тега in не должно быть.
            </sch:report>
            <sch:assert test="count(./*) = 2">
                Должно быть 2 тега.
            </sch:assert>
        </sch:rule>
        <sch:rule context="block">
            <sch:assert test="count(./id) &lt; 2">
                Тег id должен присутсвовать не более 1 раза.
            </sch:assert>
        </sch:rule>
        <sch:rule context="binder-content-viewer">
            <sch:assert test="count(./data-id) = 1">
                Тег data-id должен присутсвовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./table-name) &lt; 2">
                Тег table-name должен присутсвовать не более 1 раза.
            </sch:assert>
            <sch:report test="parent::id and not(child::table-name)">
                Ошибка. Нет тега table-name.
            </sch:report>
        </sch:rule>
        <sch:rule context="select">
            <sch:assert test="count(./id) &lt; 2">
                Тег id должен присутсвовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./actual) &lt; 2">
                Тег actual должен присутсвовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./select-what) = 1">
                Тег select-what должен присутсвовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./select-from) &lt; 2">
                Тег select-from должен присутсвовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./select-where) &lt; 2">
                Тег select-where должен присутсвовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./select-result) &lt; 2">
                Тег select-result должен присутсвовать не более 1 раза.
            </sch:assert>
        </sch:rule>
        <sch:rule context="if">
            <sch:assert test="count(./if-what) = 1">
                Тег if-what должен присутсвовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./if-then) = 1">
                Тег if-then должен присутсвовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./if-else) = 1">
                Тег if-else должен присутсвовать 1 раз.
            </sch:assert>
        </sch:rule>
        <sch:rule context="void-binder">
            <sch:assert test="count(./binder-content) = 1">
                Тег binder-content должен присутсвовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./id) &lt; 2">
                Тег id должен присутсвовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./show-binder-content) &lt; 2">
                Тег show-binder-content должен присутсвовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./actual) &lt; 2">
                Тег actual должен присутсвовать не более 1 раза.
            </sch:assert>
        </sch:rule>
        <sch:rule context="array-binder">
            <sch:assert test="count(./binder-content) = 1">
                Тег binder-content должен присутсвовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./separator) = 1">
                Тег separator должен присутсвовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./select) &lt; 2">
                Тег select должен присутсвовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./id) &lt; 2">
                Тег id должен присутсвовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./show-binder-content) &lt; 2">
                Тег show-binder-content должен присутсвовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./actual) &lt; 2">
                Тег actual должен присутсвовать не более 1 раза.
            </sch:assert>
        </sch:rule>
        <sch:rule context="rows-binder">
            <sch:assert test="count(./binder-content) = 1">
                Тег binder-content должен присутсвовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./sort) &lt; 2">
                Тег sort должен присутсвовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./separator) &lt; 2">
                Тег separator должен присутсвовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./row-skip) &lt; 2">
                Тег row-skip должен присутсвовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./select) &lt; 2">
                Тег select должен присутсвовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./id) &lt; 2">
                Тег id должен присутсвовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./show-binder-content) &lt; 2">
                Тег show-binder-content должен присутсвовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./actual) &lt; 2">
                Тег actual должен присутсвовать не более 1 раза.
            </sch:assert>
        </sch:rule>
        <sch:rule context="concat">
            <sch:assert test="count(./*) &gt; 1">
                Должно быть хотя бы 2 элемента.
            </sch:assert>
        </sch:rule>
        <sch:rule context="id">
            <sch:assert test="count(./global) &lt; 2">
                Тег global должен присутсвовать не более 1 раза.
            </sch:assert>
        </sch:rule>
        <sch:rule context="columns-binder">
            <sch:assert test="count(./binder-content) = 1">
                Тег binder-content должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./separator) &lt; 2">
                Тег separator должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./columns-skip) &lt; 2">
                Тег columns-skip должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./select) &lt; 2">
                Тег select должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./id) &lt; 2">
                Тег id должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./show-binder-content) &lt; 2">
                Тег show-binder-content должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./actual) &lt; 2">
                Тег actual должен присутствовать не более 1 раза.
            </sch:assert>
        </sch:rule>
        <sch:rule context="level-binder">
            <sch:assert test="count(./level-binder-level) = 1">
                Тег level-binder-level должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./sort) &lt; 2">
                Тег sort должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./select) &lt; 2">
                Тег select должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./id) &lt; 2">
                Тег id должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./show-binder-content) &lt; 2">
                Тег show-binder-content должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./actual) &lt; 2">
                Тег actual должен присутствовать не более 1 раза.
            </sch:assert>
        </sch:rule>
        <sch:rule context="for">
            <sch:assert test="count(./start-value) = 1">
                Тег start-value должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./end-value) = 1">
                Тег end-value должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./for-content) = 1">
                Тег for-content должен присутствовать 1 раз.
            </sch:assert>
        </sch:rule>
        <sch:rule context="while">
            <sch:assert test="count(./if-what) = 1">
                Тег if-what должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./while-content) = 1">
                Тег while-content должен присутствовать 1 раз.
            </sch:assert>
        </sch:rule>
        <sch:rule context="count">
            <sch:assert test="count(./select) = 1">
                Тег select должен присутствовать 1 раз.
            </sch:assert>
        </sch:rule>
        <sch:rule context="bind">
            <sch:assert test="count(./table-column) &lt; 2">
                Тег table-column должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./column-name) &lt; 2">
                Тег column-name должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./bind-capital) &lt; 2">
                Тег bind-capital должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:report test="ancestor::columns-binder and (child::table-column or
            child::column-name)">
                Тегов table-column и column-name не должно быть.
            </sch:report>
            <sch:report test="not(ancestor::columns-binder) and child::table-column
             and child::column-name">
                Должен быть либо тег table-column, либо тег column-name.
            </sch:report>
        </sch:rule>
        <sch:rule context="input-request">
            <sch:assert test="count(./id) &lt; 2">
                Тег id должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./comment) = 1">
                Тег comment должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./add-text) &lt; 2">
                Тег add-text должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./input) &gt; 0">
                Тег input должен присутствовать не менее 1 раза.
            </sch:assert>
            <sch:assert test="count(./variant-count) &lt; 2">
                Тег variant-count должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./select) &lt; 2">
                Тег select должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:report test="not(child::id) and .[variant-count='several']">
                variant-count=several. Нет тега id.
            </sch:report>
            <sch:report test="child::id and .[variant-count='one']">
                variant-count=one. Лишний тег id.
            </sch:report>
            <sch:report test="not(child::variant-count) and child::id">
                Тег variant-count=one нет. Тег id лишний.
            </sch:report>
        </sch:rule>
        <sch:rule context="object-request">
            <sch:assert test="count(./id) = 1">
                Тег id должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./comment) = 1">
                Тег comment должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./variant-count) = 1">
                Тег variant-count должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./select) = 1">
                Тег select должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./table-column) &gt; 0">
                Тег table-column должен присутствовать не менее 1 раза.
            </sch:assert>
        </sch:rule>
        <sch:rule context="reference-variant-request">
            <sch:assert test="count(./id) = 1">
                Тег id должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./comment) = 1">
                Тег comment должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./variant-count) = 1">
                Тег variant-count должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./reference) = 1">
                Тег reference должен присутствовать 1 раз.
            </sch:assert>
        </sch:rule>
        <sch:rule context="range-mapper">
            <sch:assert test="count(./range) &gt; 0">
                Тег range должен присутствовать не менее 1 раза.
            </sch:assert>
            <sch:assert test="count(./default-range) &lt; 2">
                Тег default-range должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="@data-id">
                Нет аттрибута data-id.
            </sch:assert>
        </sch:rule>
        <sch:rule context="increment">
            <sch:assert test="count(./data-id) = 1">
                Тег data-id должен присутствовать 1 раз.
            </sch:assert>
        </sch:rule>
        <sch:rule context="columns-count">
            <sch:assert test="count(./select) = 1">
                Тег select должен присутствовать 1 раз.
            </sch:assert>
        </sch:rule>
        <sch:rule context="string-mapping">
            <sch:assert test="count(./string-mapping-content) = 1">
                Тег string-mapping-content должен присутствовать 1 раз.
            </sch:assert>
        </sch:rule>
        <sch:rule context="update">
            <sch:assert test="count(./data-id) = 1">
                Тег data-id должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./table-column) = 1">
                Тег table-column должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./update-content) = 1">
                Тег update-content должен присутствовать 1 раз.
            </sch:assert>
        </sch:rule>
        <sch:rule context="table-column">
            <sch:assert test="count(./table-name) = 1">
                Тег table-name должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./column-name) = 1">
                Тег column-name должен присутствовать 1 раз.
            </sch:assert>
        </sch:rule>
        <sch:rule context="join-on">
            <sch:assert test="count(./table-column) = 2">
                Тег table-column должен присутствовать 2 раза.
            </sch:assert>
        </sch:rule>
        <sch:rule context="is-null-or-empty">
            <sch:assert test="count(./select) = 1">
                Тег select должен присутствовать 1 раз.
            </sch:assert>
        </sch:rule>
        <sch:rule context="not">
            <sch:report test="ancestor::select-where and child::is-null-or-empty">
                Тега is-null-or-empty не должно быть.
            </sch:report>
            <sch:report test="ancestor::if-what and child::in">
                Тега in не должно быть.
            </sch:report>
            <sch:assert test="count(./*) = 1">
                Должeн быть 1 элемент.
            </sch:assert>
        </sch:rule>
        <sch:rule context="binder-content">
            <sch:report test="ancestor::array-binder and not(child::array-binder-value)">
                Нет тега array-binder-value.
            </sch:report>
            <sch:report test="not(ancestor::array-binder) and child::array-binder-value">
                Тега array-binder-value не должно быть.
            </sch:report>
        </sch:rule>
        <sch:rule context="typed-value">
            <sch:assert test="count(./type) = 1">
                Тег type должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./value) &gt; 0">
                Тег value должен присутствовать не менее 1 раза.
            </sch:assert>
        </sch:rule>
        <sch:rule context="string-mapping-value">
            <sch:assert test="@key">
                Аттрибут key должен присутствовать.
            </sch:assert>
            <sch:assert test="count(./additional-column) &lt; 2">
                Тег additional-column должен присутствовать не более 1 раза.
            </sch:assert>
        </sch:rule>
        <sch:rule context="row-skip">
            <sch:assert test="count(./row-index) &gt; 2">
                Тег row-index должен присутствовать не менее 1 раза.
            </sch:assert>
        </sch:rule>
        <sch:rule context="column-skip">
            <sch:assert test="count(./column-index) &gt; 2">
                Тег column-index должен присутствовать не менее 1 раза.
            </sch:assert>
        </sch:rule>
        <sch:rule context="level-binder-level">
            <sch:assert test="count(./level-binder-level) &lt; 2">
                Тег level-binder-level должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./separator) &lt; 2">
                Тег separator должен присутствовать не более 1 раза.
            </sch:assert>
        </sch:rule>
        <sch:rule context="is-null|is-not-null">
            <sch:report test="not(child::table-column) and ancestor::select-where">
                Должен быть только один тег table-column.
            </sch:report>
            <sch:assert test="count(./*) = 1">
                Должен быть только один тег.
            </sch:assert>
        </sch:rule>

        <sch:rule context="substring">
            <sch:assert test="count(./length) = 1">
                Тег length должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./start-index) &lt; 2">
                Тег start-index должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./bind) &lt; 2">
                Тег bind должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./binder-content-viewer) &lt; 2">
                Тег binder-content-viewer должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:report test="child::bind and child::binder-content-viewer">
                Должен быть либо тег bind, либо тег binder-content-viewer.
            </sch:report>
        </sch:rule>
        <sch:rule context="select-from">
            <sch:assert test="count(./db) &lt; 2">
                Тег db должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:report test="child::db and child::table-name and (child::data-id or child::inner-join
            or child::full-join or child::left-join or child::right-join or child::concat or child::cp)">
                Тегов data-id, inner-join, full-join, left-join, right-join, concat, cp не должно быть,
                так как уже есть теги db и table-name.
            </sch:report>
            <sch:report test="not(child::db) and child::table-name or not(child::table-name) and child::db">
                Если есть db, то кроме него может быть только table-name.
                Если есть table-name, то кроме него может быть только db.
            </sch:report>
            <sch:report test="count(./*) &gt; 1 and not(child::db or child::table-name)">
                Должен быть только один тег: data-id, inner-join, full-join, left-join, right-join, concat, cp.
            </sch:report>
        </sch:rule>
        <sch:rule context="select-what">
            <sch:assert test="count(./all) &lt; 2">
                Тег all должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./distinct) &lt; 2">
                Тег distinct должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:report test="child::all and child::table-column or child::all and child::column-name
or child::table-column and child::column-name">
                Должен быть либо all, либо table-column, либо column-name.
            </sch:report>
        </sch:rule>
        <sch:rule context="select-where">
            <sch:assert test="count(./*) = 1">
                Должен быть только один тег: is-null, is-not-null, in, equals, not-equals, greater,
                greater-or-equals, less, less-or-equals, and, or, not.
            </sch:assert>
        </sch:rule>
        <sch:rule context="if-what">
            <sch:assert test="count(./*) = 1">
                Должен быть только один тег: is-null, is-not-null, is-null-or-empty, equals, not-equals, greater,
                greater-or-equals, less, less-or-equals, and, or, not.
            </sch:assert>
        </sch:rule>
        <sch:rule context="full-join|left-join|right-join|inner-join">
            <sch:assert test="count(./*) = 3 and count(./join-on) = 1">
                Должнo быть 2 тегa из списка: data-id, select, inner-join, full-join, right-join, left-join.
                И один тег join-on.
            </sch:assert>
        </sch:rule>
        <sch:rule context="in">
            <sch:assert test="*[1]/name() = 'table-column'">
                Тег table-column должен быть первым.
            </sch:assert>
            <sch:report test="child::typed-value and child::select">
                Должен быть либо тег typed-value, либо select.
            </sch:report>
            <sch:assert test="count(./table-column) = 1">
                Должен быть 1 тег table-column.
            </sch:assert>
            <sch:assert test="count(./*) = 2">
                Должно быть ровно 2 тега.
            </sch:assert>
        </sch:rule>
        <sch:rule context="equals|not-equals|greater|greater-or-equals|less|less-or-equals">
            <sch:assert test="count(./*) = 2">
                Должно быть ровно 2 тега.
            </sch:assert>
            <sch:report test="ancestor::select-where and not(child::table-column) and not(child::column-name)">
                Должен быть тег table-column, либо  column-name.
            </sch:report>
            <sch:report test="*[1]/name()='typed-value' and ancestor::select-where">
                Тег typed-value должен быть вторым.
            </sch:report>
            <sch:assert test="child::typed-value">
                Нет тега typed-value.
            </sch:assert>
        </sch:rule>
        <sch:rule context="sort">
            <sch:report test="child::table-column and child::column-name">
                Должен быть либо table-column, либо column-name.
            </sch:report>
        </sch:rule>
        <sch:rule context="start-value|end-value">
            <sch:report test="child::data-id and child::text">
                Должен быть либо data-id, либо text.
            </sch:report>
            <sch:assert test="count(./*) &lt; 2">
                Тег data-id или text должен присутствовать не более 1 раза.
            </sch:assert>
        </sch:rule>
        <sch:rule context="length">
            <sch:report test=". &lt; 1">
                Значение length должно быть положительным.
            </sch:report>
        </sch:rule>
        <sch:rule context="range">
            <sch:report test="@range-from &gt; @range-to">
                Значение атрибута range-to должно быть не меньше, чем значение атрибута
                range-from.
            </sch:report>
        </sch:rule>
        <sch:rule context="input">
            <sch:assert test="count(./id) = 1">
                Тег id должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./comment) = 1">
                Тег comment должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./typed-value) = 1">
                Тег typed-value должен присутствовать 1 раз.
            </sch:assert>
            <sch:assert test="count(./nullable) &lt; 2">
                Тег nullable должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./reference) &lt; 2">
                Тег reference должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./bind) &lt; 2">
                Тег bind должен присутствовать не более 1 раза.
            </sch:assert>
        </sch:rule>
        <sch:rule context="reference">
            <sch:assert test="count(./table-column) &lt; 2">
                Тег table-column должен присутствовать не более 1 раза.
            </sch:assert>
            <sch:assert test="count(./allow-user-value) &lt; 2">
                Тег allow-user-value должен присутствовать не более 1 раза.
            </sch:assert>
        </sch:rule>
        <sch:rule context="range">
            <sch:assert test="@range-from">
                Нет аттрибута range-from.
            </sch:assert>
            <sch:assert test="@range-to">
                Нет аттрибута range-to.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>