{* DO NOT EDIT THIS FILE! Use an override template instead. *}
<div class="label">{"Search: "|i18n("design/standard/toolbar")}</div><div class="search-line"><form action={"/content/search/"|ezurl} method="get"><input class="searchinput" type="text" size="10" name="SearchText" id="Search" value="" />
<input type="image" class="searchimage" src={"1x1.gif"|ezimage} />
{section show=$relative_check|eq( 'yes' )}
{section show=is_set( $module_result.content_info.node_id )}
    {let node_id=$module_result.content_info.node_id}
    {section show=$node_id|ne( 2 )}
    <div class="optionblock">
        <input type="radio" class="radiobutton" name="SubTreeArray[]" value="" id="search-global" /><label for="search-global">{'Global'|i18n( 'design/base/search' )}</label>
        <input type="radio" class="radiobutton" name="SubTreeArray[]" value="{$node_id}" id="search-here" checked="checked" /><label for="search-here">{'From here'|i18n( 'design/base/search' )}</label>
    </div>
    {/section}
    {/let}
{/section}
{/section}
</form></div>
