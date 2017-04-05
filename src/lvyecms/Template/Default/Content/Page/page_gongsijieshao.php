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
    <div class="banner_warp" style="background-image: url('{:getCategory(14,'image')}');"></div>
    <!--banner_warp end-->
    <!--guide_warp begin-->
    <div class="guide_warp">
        <div class="container">
            <h4 class="guide_tit">关于我们</h4>
            <!--guide_scr begin-->
            <div id="guide_scr" class="owl-carousel">
                <div class="item"><a href="{:U('lists', array('catid'=>18))}" class="guide_cur"><span>公司介绍</span></a></div>
                <div class="item"><a href="{:U('lists', array('catid'=>17))}"><span>管理团队</span></a></div>
                <div class="item"><a href="{:U('lists', array('catid'=>19))}"><span>联系我们</span></a></div>
            </div>
            <!--guide_scr end-->
        </div>
    </div>
    <!--guide_warp end-->
    <!--container begin-->
    <div class="container">
        <!--intro begin-->
        <div id="content"><textarea style="display:none;">{:getCustomData(1)}</textarea></div>
        <!--intro end-->
    </div>
    <!--container end-->
</main>
<!--main end-->
<script type="text/javascript">
    editormd.markdownToHTML("content");
</script>
<template file="Content/footer.php"/>