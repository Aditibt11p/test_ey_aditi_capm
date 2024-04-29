using CatalogService as service from '../../srv/Catalogservice';

 
annotate service.POs with @(
 
    UI.SelectionFields:[
        PO_ID,
        PARTNER_GUID.COMPANY_NAME,
        PARTNER_GUID.ADDRESS_GUID.COUNTRY,
        GROSS_AMOUNT,
        CURRENCY_code
    ],
    UI.LineItem:[
        {
            $Type : 'UI.DataField',
            Value : PO_ID,
        },
        {
            $Type : 'UI.DataField',
            Value : PARTNER_GUID.COMPANY_NAME,
        },
        {
            $Type : 'UI.DataField',
            Value : PARTNER_GUID.ADDRESS_GUID.COUNTRY,
        },
        {
            $Type : 'UI.DataField',
            Value : GROSS_AMOUNT,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'CatalogService.boost',
            Label: 'Boost',
            Inline: true
        },
        {
            $Type : 'UI.DataField',
            Value : OverallStatus,
            Criticality: Criticality
        },
    ],
    UI.HeaderInfo:{
        TypeName: 'Purchase Order',
        TypeNamePlural: 'Purchase Orders',
        Title : {Value : PO_ID},
        Description: {Value : PARTNER_GUID.COMPANY_NAME},
        ImageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/EY_logo_2019.svg/1200px-EY_logo_2019.svg.png'
    },
    UI.Facets: [
        {
            $Type : 'UI.CollectionFacet',
            Label: 'More Info',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Target : '@UI.Identification',
                    Label: 'Details'
                },
            ],
        },
    ],
    UI.Identification: [
        {
            $Type : 'UI.DataField',
            Value : PO_ID,
        },
        {
            $Type : 'UI.DataField',
            Value : PARTNER_GUID_NODE_KEY,
        },
    ]
 
);
 