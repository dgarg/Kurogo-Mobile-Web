{include file="findInclude:common/templates/header.tpl"}

<div class="nonfocal">
  <h2>{$feedTitle} for {$current}</h2>
</div>

{include file="findInclude:modules/calendar/templates/viewlist.tpl" viewlist=$viewlist}

{capture name="sideNav" assign="sideNav"}
  <div class="{block name='sideNavClass'}sidenav2{/block}">
    {if $prev}
      <a href="{$prevURL}" class="sidenav-prev">{$prev}</a> 
    {/if}
    {if $next}
      <a href="{$nextURL}" class="sidenav-next">{$next}</a>
    {/if}
  </div>
{/capture}

{$sideNav}

{include file="findInclude:common/templates/results.tpl" results=$events}

{$sideNav}

{include file="findInclude:common/templates/footer.tpl"}
