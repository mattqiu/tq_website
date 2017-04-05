<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<template file="Content/header.php"/>
<!--main begin-->
<main>
    <!--banner_warp begin-->
    <div class="banner_warp" style="background-image: url('{:getCategory(13,'image')}');">
        <div class="container">
            <div class="banner_box">
                <div class="banner_info">
                    <h3 class="sub_tit">资讯中心</h3>
                    <div class="banner_des">{:getCategory(13,'description')}</div>
                </div>
            </div>
        </div>
    </div>
    <!--banner_warp end-->
    <!--container begin-->
    <div class="container">
        <!--report begin-->
        <ul class="report clearfix">
            <content action="lists" catid="$catid" page="$page" num="5" order="id DESC">
                <volist name="data" id="li">
                    <li>
                        <span class="report_date"><b>{$li['updatetime']|date="d",###}</b><em>{$li['updatetime']|date="Y-m",###}</em></span>
                        <a href="{$li['url']}" class="report_pic">
                            <img src="{$li['thumb']}" width="248" height="154" />
                        </a>
                        <div class="report_info">
                            <h5><a href="{$li['url']}">{$li['title']}</a></h5>
                            <div class="report_des">{$li['description']}</div>
                            <p class="report_date2">{$li['updatetime']|date="Y-m-d",###}</p>
                        </div>
                    </li>
                </volist>
            </content>
        </ul>
        <!--report end-->
        <!--page begin-->
        <div class="page clearfix">
            {$pages}
        </div>
        <!--page end-->
    </div>
    <!--container end-->
</main>
<!--main end-->
<template file="Content/footer.php"/>