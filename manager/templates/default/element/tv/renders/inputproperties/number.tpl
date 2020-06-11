<div id="tv-input-properties-form{$tv|default}"></div>

{literal}
<script type="text/javascript">
// <![CDATA[
var params = {
{/literal}
{foreach from=$params key=k item=v name='p'}
    '{$k}': '{$v|escape:"javascript"}'{if NOT $smarty.foreach.p.last},{/if}
{/foreach}
{literal}
};
var oc = {'change':{fn:function(){Ext.getCmp('modx-panel-tv').markDirty();},scope:this}};

MODx.load({
    xtype: 'panel'
    ,layout: 'form'
    ,autoHeight: true
    ,cls: 'form-with-labels'
    ,labelAlign: 'top'
    ,border: false
    ,items: [{
        xtype: 'combo-boolean'
        ,fieldLabel: _('required')
        ,description: MODx.expandHelp ? '' : _('required_desc')
        ,name: 'inopt_allowBlank'
        ,hiddenName: 'inopt_allowBlank'
        ,id: 'inopt_allowBlank{/literal}{$tv|default}{literal}'
        ,anchor: '100%'
        ,value: (params['allowBlank']) ? !(params['allowBlank'] === 0 || params['allowBlank'] === 'false') : true
        ,listeners: oc
    },{
        xtype: MODx.expandHelp ? 'label' : 'hidden'
        ,forId: 'inopt_allowBlank{/literal}{$tv|default}{literal}'
        ,html: _('required_desc')
        ,cls: 'desc-under'
    },{
        xtype: 'combo-boolean'
        ,fieldLabel: _('number_allownegative')
        ,name: 'inopt_allowNegative'
        ,hiddenName: 'inopt_allowNegative'
        ,id: 'inopt_allowNegative{/literal}{$tv|default}{literal}'
        ,anchor: '100%'
        ,value: (params['allowNegative']) ? !(params['allowNegative'] === 0 || params['allowNegative'] === 'false') : true
        ,listeners: oc
    },{
        xtype: MODx.expandHelp ? 'label' : 'hidden'
        ,forId: 'inopt_allowNegative{/literal}{$tv|default}{literal}'
        ,html: _('allownegative_desc')
        ,cls: 'desc-under'
    },{
        layout: 'column'
        ,border: false
        ,defaults: {
            layout: 'form'
            ,labelAlign: 'top'
            ,labelSeparator: ''
            ,anchor: '100%'
            ,border: false
        }
        ,items: [{
            columnWidth: .3
            ,items: [{
                xtype: 'combo-boolean'
                ,fieldLabel: _('number_allowdecimals')
                ,name: 'inopt_allowDecimals'
                ,hiddenName: 'inopt_allowDecimals'
                ,id: 'inopt_allowDecimals{/literal}{$tv|default}{literal}'
                ,anchor: '100%'
                ,value: (params['allowDecimals']) ? !(params['allowDecimals'] === 0 || params['allowDecimals'] === 'false') : true
                ,listeners: oc
            },{
                xtype: MODx.expandHelp ? 'label' : 'hidden'
                ,forId: 'inopt_allowDecimals{/literal}{$tv|default}{literal}'
                ,html: _('allowdecimals_desc')
                ,cls: 'desc-under'
            }]
        },{
            columnWidth: .4
            ,items: [{
                xtype: 'numberfield'
                ,fieldLabel: _('number_decimalprecision')
                ,name: 'inopt_decimalPrecision'
                ,id: 'inopt_decimalPrecision{/literal}{$tv|default}{literal}'
                ,value: params['decimalPrecision'] || 2
                ,anchor: '100%'
                ,listeners: oc
            },{
                xtype: MODx.expandHelp ? 'label' : 'hidden'
                ,forId: 'inopt_decimalPrecision{/literal}{$tv|default}{literal}'
                ,html: _('decimalprecision_desc')
                ,cls: 'desc-under'
            }]
        },{
            columnWidth: .3
            ,items: [{
                xtype: 'textfield'
                ,fieldLabel: _('number_decimalseparator')
                ,name: 'inopt_decimalSeparator'
                ,id: 'inopt_decimalSeparator{/literal}{$tv|default}{literal}'
                ,value: params['decimalSeparator'] || '.'
                ,anchor: '100%'
                ,listeners: oc
            },{
                xtype: MODx.expandHelp ? 'label' : 'hidden'
                ,forId: 'inopt_decimalSeparator{/literal}{$tv|default}{literal}'
                ,html: _('decimalseparator_desc')
                ,cls: 'desc-under'
            }]
        }]
    },{
        layout: 'column'
        ,border: false
        ,defaults: {
            layout: 'form'
            ,labelAlign: 'top'
            ,labelSeparator: ''
            ,anchor: '100%'
            ,border: false
        }
        ,items: [{
            columnWidth: .5
            ,items: [{
                xtype: 'textfield'
                ,fieldLabel: _('number_minvalue')
                ,name: 'inopt_minValue'
                ,id: 'inopt_minValue{/literal}{$tv|default}{literal}'
                ,value: params['minValue'] || ''
                ,anchor: '100%'
                ,listeners: oc
            },{
                xtype: MODx.expandHelp ? 'label' : 'hidden'
                ,forId: 'inopt_minValue{/literal}{$tv|default}{literal}'
                ,html: _('minvalue_desc')
                ,cls: 'desc-under'
            }]
        },{
            columnWidth: .5
            ,items: [{
                xtype: 'textfield'
                ,fieldLabel: _('number_maxvalue')
                ,name: 'inopt_maxValue'
                ,id: 'inopt_maxValue{/literal}{$tv|default}{literal}'
                ,value: params['maxValue'] || ''
                ,anchor: '100%'
                ,listeners: oc
            },{
                xtype: MODx.expandHelp ? 'label' : 'hidden'
                ,forId: 'inopt_maxValue{/literal}{$tv|default}{literal}'
                ,html: _('maxvalue_desc')
                ,cls: 'desc-under'
            }]
        }]
    }]
    ,renderTo: 'tv-input-properties-form{/literal}{$tv|default}{literal}'
});
// ]]>
</script>
{/literal}
