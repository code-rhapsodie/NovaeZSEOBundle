{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{def $metas = ezini('Settings', 'Metas', 'novaseo.ini')}
{def $state=array( 'old', 'new' )}
    {foreach array( $diff.old_content, $diff.new_content ) as $attr sequence array('del','ins') as $sequenceVar }
        <div class="block novaseao-metas">
            <div class="">
                <ul>
                    {foreach $metas as $key => $meta }
                        <li>
                            <label><i class="fa fa-{$meta.icon}"></i>{$meta.label|wash}:</label>&nbsp;<{$sequenceVar}>{if and(is_set($attr.content.metas),is_set($attr.content.metas[$key]))}{$attr.content.metas[$key].content|wash}{/if}</{$sequenceVar}>
                        </li>
                    {/foreach}
                </ul>
            </div>
        </div>
    {/foreach}
{undef $state}