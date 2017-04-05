<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<template file="Content/header.php"/>
<link rel="stylesheet" href="{$config_siteurl}statics/editor.md/css/editormd.preview.min.css" />
<link rel="stylesheet" href="{$config_siteurl}statics/editor.md/css/editormd.css" />
<script src="{$config_siteurl}statics/editor.md/lib/marked.min.js"></script>
<script src="{$config_siteurl}statics/editor.md/lib/prettify.min.js"></script>
<script src="{$config_siteurl}statics/editor.md/editormd.min.js"></script>
<style>
    .editormd-preview-container, .editormd-html-preview {
        background: none;
    }
</style>
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
        <!--article begin-->
        <section class="article">
            <h6 class="article_tit">{$title}</h6>
            <div id="content"><textarea style="display:none;">{$content}</textarea></div>
        </section>
        <!--article end-->
        <!--article_page begin-->
        <ul class="article_page clearfix">
            <li>
                上一条：<pre target="1" msg="已经没有了" />
            </li>
            <li class="article_next">
                下一条：<next target="1" msg="已经没有了" />
            </li>
        </ul>
        <!--article_page end-->
    </div>
    <!--container end-->
</main>
<!--main end-->
<script type="text/javascript">
    editormd.markdownToHTML("content");
</script>
<template file="Content/footer.php"/>