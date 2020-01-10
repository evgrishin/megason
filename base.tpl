<!DOCTYPE html>
<html lang="{$_modx->config.cultureKey}">
<head>
{include 'file:templates/mega-son.ru/head_meta.tpl'}
{include 'file:templates/mega-son.ru/head_scripts.tpl'}

</head>
<body style="background: rgb(253, 253, 253);">
<main>
    <header class="">
        <nav class="navbar navbar-dark navbar-expand p-0 bg-secondary d-none d-md-block">
            <div class="container">
            {include 'file:templates/mega-son.ru/menu_top.tpl'}
            </div>
        </nav>
        <section class="header-main shadow-sm" style="background: #d9d9d9;">
            <div class="container" >
                <div class="row" >
                    <div class="col-md-2 col-2 d-block d-md-none align-self-center">
                        <button class="navbar-toggler bg-primary" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <svg viewBox="0 0 24 24" width="32" height="32" fill="#FFF" xmlns="http://www.w3.org/2000/svg"><title></title><path d="M4.5,7.5h15a1.5,1.5,0,0,0,0-3H4.5a1.5,1.5,0,0,0,0,3Z"></path><path d="M19.5,10.5H4.5a1.5,1.5,0,0,0,0,3h15a1.5,1.5,0,0,0,0-3Z"></path><path d="M19.5,16.5H4.5a1.5,1.5,0,0,0,0,3h15a1.5,1.5,0,0,0,0-3Z"></path></svg>
                        </button>

                    </div>
                    <div class="col-md-3 col-2 align-self-center">
                        <a class="navbar-brand" href="#">МЕГА-СОН.РФ</a>
                    </div>
                    <div class="col-md-6 col-4 align-self-center text-center">
                        <div class="row">
                            <div class="col-md-6 col-12">
                                <a href="#Cities" class="" data-toggle="modal"><i class="fa fa-map-marker p-1"></i>{$_modx->getPlaceholder('egregion.city')}</a>
                            </div>
                            <div class="col-md-6 col-12">
                                <a href="tel:88003338062">
                                    <div class="icon">
                                        <i class="icon fa fa-phone p-1"></i>8(800)333-80-62
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-4 align-self-center">
                        <div class="row">
                            <div class="col-md-12 col-3">
                                <a href="#" class="widget-header d-md-none">
                                    <div class="icon">
                                        <i class="icon-sm rounded-circle border fa fa-search"></i>
                                    </div>
                                </a>
                                <!--
                                <form class="form-inline my-2 p-2 my-lg-0 d-none d-md-block">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Search">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="submit">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form> -->
                            </div>
                            <div class="col-md-4 col-3">
                                <a href="#" class="widget-header">
                                    <div class="icon">
                                        <i class="icon-sm rounded-circle border fa fa-heart"></i>
                                    </div>
                                </a>
                            </div>
<!--
                            <div class="col-md-4 col-3">
                                <a href="#" class="widget-header">
                                    <div class="icon">
                                        <i class="icon-sm rounded-circle border fa fa-bar-chart"></i>
                                    </div>
                                </a>
                            </div> -->
                            <div class="col-md-4 col-3">
                                    {$_modx->runSnippet("!msMiniCart", [
                                    'tpl' => '@FILE common/chunks/miniCart.tpl'
                                    ])}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section  class="navbar-dark" style="background: #039be5">
            <div class="container">
                {include 'file:templates/mega-son.ru/menu_main.tpl'}
            </div>
        </section>
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm">
                        <nav aria-label="breadcrumbs">
                            {$_modx->runSnippet("pdoCrumbs", [
                                'showHome' => 0,
                                'showAtHome' => 0,
                                'tpl' => '@INLINE <li class="breadcrumb-item"><a href="{$link}" itemprop="item">{$menutitle}</a></li>',
                                'tplCurrent' => '@FILE common/chunks/breabcrumbs_current.tpl',
                                'tplWrapper' => '@INLINE <ol class="breadcrumb">{$output}</ol>'
                            ])}
                        </nav>
                    </div>
                </div>
            </div>
        </section>
    </header>
    <article>
        {block 'content'}
        {/block}
    </article>
    <footer class="section-footer border-top bg">
        <div class="container">
            <section class="footer-top padding-y">

                <div class="row">
                    <aside class="col-md col-6">
                        <h6 class="title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Бренды</font></font></h6>
                        <ul class="list-unstyled">
                            <li> <a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Adidas</font></font></a></li>
                            <li> <a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">пума</font></font></a></li>
                            <li> <a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Reebok</font></font></a></li>
                            <li> <a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Nike</font></font></a></li>
                        </ul>
                    </aside>
                    <aside class="col-md col-6">
                        <h6 class="title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Компания</font></font></h6>
                        <ul class="list-unstyled">
                            <li> <a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">О нас</font></font></a></li>
                            <li> <a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Карьера</font></font></a></li>
                            <li> <a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Найти магазин</font></font></a></li>
                            <li> <a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Правила и условия</font></font></a></li>
                            <li> <a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Карта сайта</font></font></a></li>
                        </ul>
                    </aside>
                    <aside class="col-md col-6">
                        <h6 class="title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Помогите</font></font></h6>
                        <ul class="list-unstyled">
                            <li> <a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Свяжитесь с нами</font></font></a></li>
                            <li> <a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Возврат денег</font></font></a></li>
                            <li> <a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Статус заказа</font></font></a></li>
                            <li> <a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Информация о доставке</font></font></a></li>
                            <li> <a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Открытый спор</font></font></a></li>
                        </ul>
                    </aside>
                    <aside class="col-md col-6">
                        <h6 class="title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">учетная запись</font></font></h6>
                        <ul class="list-unstyled">
                            <li> <a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> Логин пользователя </font></font></a></li>
                            <li> <a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> Регистрация пользователя </font></font></a></li>
                            <li> <a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> Настройки аккаунта </font></font></a></li>
                            <li> <a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> мои заказы </font></font></a></li>
                        </ul>
                    </aside>
                    <aside class="col-md">
                        <h6 class="title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Социальное</font></font></h6>
                        <ul class="list-unstyled">
                            <li><a href="#"> <i class="fab fa-facebook"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> facebook </font></font></a></li>
                            <li><a href="#"> <i class="fab fa-twitter"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> щебет </font></font></a></li>
                            <li><a href="#"> <i class="fab fa-instagram"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> Instagram </font></font></a></li>
                            <li><a href="#"> <i class="fab fa-youtube"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> YouTube </font></font></a></li>
                        </ul>
                    </aside>
                </div> <!-- row.// -->
            </section>	<!-- footer-top.// -->

            <section class="footer-bottom row">
                <div class="col-md-2">
                    <p class="text-muted"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> © 2019 Название компании </font></font></p>
                </div>
                <div class="col-md-8 text-md-center">
                    <span class="px-2"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">info@pixsellz.io </font></font></span>
                    <span class="px-2"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+ 879-332-9375 </font></font></span>
                    <span class="px-2"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Название улицы 123, Avanue abc</font></font></span>
                </div>
                <div class="col-md-2 text-md-right text-muted">
                    <i class="fab fa-lg fa-cc-visa"></i>
                    <i class="fab fa-lg fa-cc-paypal"></i>
                    <i class="fab fa-lg fa-cc-mastercard"></i>
                </div>
            </section>
        </div>
    </footer>
    <noindex>
        <div class="modal" id="main_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Меню</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" id="main_menu_content">

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Send message</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal" id="searche_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" id="modal_searche">

                    </div>
                </div>
            </div>
        </div>

        {$_modx->runSnippet("!egCitys", [
        'tpl' => '@FILE common/chunks/modal_regions.tpl'
        ])}
    </noindex>
</main>
{include 'file:templates/mega-son.ru/futer_scripts.tpl'}
<script>

    /*
    $('#exampleModal').on('show.bs.modal', function() {
        $('#bodyf').append($("#mse2_filters").detach());
    });
    $('#exampleModal').on('hide.bs.modal', function() {
        $('#category_filter').append($("#mse2_filters").detach());
    });*/


</script>

<script>
    $(document).ready(function () {
        $('.sd-city-input').keyup(function() {
            if ($(this).val() != '') {
                $('.sd-city-item').hide();
                $('.citygroup').hide();
                s = $(this).val();
                s = s.charAt(0).toUpperCase() + s.substr(1);
                $('li:contains("'+s+'")').show();
                $('div.citygroup:contains("'+s+'")').show();

            } else {
                $('.sd-city-item').show();
                $('.citygroup').show();
            }
        });
    });
</script>
SQL: [^qt^] ([^q^]), PHP: [^p^], MEM: [^m^], ALL: [^t^] ([^s^])
</body>
</html>
