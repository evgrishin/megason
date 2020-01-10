{extends 'file:templates/mega-son.ru/base.tpl'}
{block 'content'}
<section>
    [[!msOptionsPrice.initialize?]]
 <div class="container">
    <div id="msProduct" class="row">
        <div class="col-sm-12">
            <h1 class="text-center text-md-left">[[*pagetitle]]</h1>
            [[+new:isnot=``:then=`<span class="badge badge-secondary badge-pill col-auto">[[%ms2_frontend_new]]</span>`]]
            [[+popular:isnot=``:then=`<span class="badge badge-secondary badge-pill col-auto">[[%ms2_frontend_popular]]</span>`]]
            [[+favorite:isnot=``:then=`<span class="badge badge-secondary badge-pill col-auto">[[%ms2_frontend_favorite]]</span>`]]
        </div>
    </div>
        <div id="msProduct" class="row align-items-center">
            <div class="col-12 col-md-8">
                <div class="gallery-wrap">
                [[!msGallery]]
                </div>
            </div>
            <div class="col-12 col-md-4">
                <div class="box">
                    {'!egOptionPrice' | snippet : [
                    'tpl' => '@FILE common/chunks/product_modification.tpl',
                    'product' => $_modx->resource.id,
                    'options' => 'size'
                    ]}
                </div>
            </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <ul class="nav nav-tabs" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" href="#desc" role="tab" data-toggle="tab">Описание</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#chars" role="tab" data-toggle="tab">Характеристики</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#delivery" role="tab" data-toggle="tab">Доставка</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#reviews" role="tab" data-toggle="tab">Отзывы</a>
                </li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="desc">
                    [[*content]]</div>
                <div role="tabpanel" class="tab-pane fade" id="chars">[[msProductOptions]]</div>
                <div role="tabpanel" class="tab-pane fade" id="delivery">Доставка</div>
                <div role="tabpanel" class="tab-pane fade" id="reviews">ccc</div>
            </div>
            {'!egOptionPrice' | snippet : [
            'tpl' => '@FILE common/chunks/tpl.productModificationList.tpl',
            'product' => $_modx->resource.id,
            'options' => 'size'
            ]}

            {*
            с этим товаром покупают
            *}
            {*
            смотрите еще
            *}

            {*
            сложно выбрать?
            *}

            {*
            мы гарантируем / почему нам доверяют
            *}

        </div>
    </div>
 </div>
</section>
{/block}