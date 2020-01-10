{extends 'file:templates/mega-son.ru/base.tpl'}
{block 'content'}
    {$_modx->runSnippet("!egMainHost")}
    {var $filter = $_modx->runSnippet("!egCategoryFilter", ['filter' => [
        'filters' => 'ms|price:number,ms|vendor:vendors,msoption|size',
        'aliases' => 'ms|price==price,ms|vendor==vendor,msoption|size==size',
        'tplFilter.outer.default' => '@FILE templates/mega-son.ru/chunks/filter_outer.tpl',
        'tplFilter.row.default' => '@FILE templates/mega-son.ru/chunks/filter_row.tpl',
        'tplFilter.outer.price' => '@FILE templates/mega-son.ru/chunks/filter_outer_price.tpl',
        'tplFilter.row.price' => '@FILE templates/mega-son.ru/chunks/filter_row_price.tpl',
        'tplOuter' => '@FILE templates/mega-son.ru/chunks/category_mfilter_outer.tpl',
        'tpls' => '@FILE templates/mega-son.ru/chunks/category_product_item.tpl',
        'limit' => 12,
        'showEmptyFilters' => 1,
        'ajaxMode' => 'default',
        'paginator' => 'pdoPage',
        'showLog' => '0',
        ]
    ])}

    {$_modx->runSnippet("!mFilter2", $filter)}
{/block}
