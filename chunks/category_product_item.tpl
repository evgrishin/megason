<div class="card card-product">
    <div class="card-body">
        <div class="row">
            <div class="col-md-3">
                <div class="img-wrap">
                    <a href="{'!egOptionPrice' | snippet : ['tpl' => '@INLINE {$default.url}','product' => $id]}">
                        {if $thumb?}
                            <img src="{$image}" class="mw-100" alt="{$pagetitle}" title="{$pagetitle}"/>
                        {else}
                            <img src="{'assets_url' | option}components/minishop2/img/web/ms2_small.png"
                                 srcset="{'assets_url' | option}components/minishop2/img/web/ms2_small@2x.png 2x"
                                 class="mw-100" alt="{$pagetitle}" title="{$pagetitle}"/>
                        {/if}
                    </a>
                </div>
            </div>
            <article class="col-md-6">
                <h4 class="title">{'!egOptionPrice' | snippet : ['tpl' => '@INLINE <a href="{$default.url}">{$default.title}</a>','product' => $id]}</h4>
                <div class="rating-wrap">
                    <ul class="rating-stars">
                        <li style="width:100%" class="stars-active">
                            <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </li>
                        <li>
                            <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </li>
                    </ul>
                   {** <div class="label-rating">132 отзыва</div>
                    <div class="label-rating">154 заказов</div>**}
                </div>
                <p>{$introtext}</p>
                {'msProductOptions' | snippet : [
                'onlyOptions' => $parent | resource : 'categoryOptions',
                'tpl' => '@FILE common/chunks/tpl.categoryFeatures.tpl',
                'product' => $id,
                ]}
            </article>
            <div class="col-md-3 text-center border-left">
                <div class="action-wrap">
                                {'!egOptionPrice' | snippet : [
                                    'tpl' => '@FILE common/chunks/category_modification.tpl',
                                    'product' => $id,
                                    'instock' => $instock,
                                    'options' => 'size'
                                ]}
                </div>
            </div>
        </div>
</div>
