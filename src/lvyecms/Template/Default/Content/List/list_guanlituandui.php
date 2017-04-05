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
<main style="background: none; background-color:#525156;">  <!-- TODO xhy -->
    <!--banner_warp begin-->
    <div class="banner_warp" style="background-image: url('{:getCategory(14,'image')}');"></div>
    <!--banner_warp end-->
    <!--guide_warp begin-->
    <div class="guide_warp">
        <div class="container">
            <h4 class="guide_tit">关于我们</h4>
            <!--guide_scr begin-->
            <div id="guide_scr" class="owl-carousel">
                <div class="item"><a href="{:U('lists', array('catid'=>18))}"><span>公司介绍</span></a></div>
                <div class="item"><a href="{:U('lists', array('catid'=>17))}" class="guide_cur"><span>管理团队</span></a></div>
                <div class="item"><a href="{:U('lists', array('catid'=>19))}"><span>联系我们</span></a></div>
            </div>
            <!--guide_scr end-->
        </div>
    </div>
    <!--guide_warp end-->
    <!--container begin-->
    <div class="container">
        <!--manager begin-->
        <style type="text/css"> <!-- TODO xhy -->
            .manager {

            }
            #canvas {
                width: 70%;
                margin-left:15%;
            }

            .manager li {
                margin-bottom:75px;
                background: #58575c;
                border:none;
                -webkit-box-shadow:3px 3px 20px 3px #000000;
                -moz-box-shadow: 3px 3px 20px 3px #000000;
                box-shadow: 3px 3px 20px 3px #000000;
            }

            .manager .manager_pic {
                position: absolute;
                margin-top: -70px;
            }

            .manager .box-img {
                width: 216px;
                height: 265px;
                background-size: 100%;
                background-repeat: no-repeat;
            }

            .manager .box-img-rotate-left-60 {
                transform: rotate(-60deg);
                -ms-transform: rotate(-60deg);
                -moz-transform: rotate(-60deg);
                -webkit-transform: rotate(-60deg);
                overflow: hidden;
            }

            .manager .box-img-rotate-right-120 {
                transform: rotate(120deg);
                -ms-transform: rotate(120deg);
                -moz-transform: rotate(120deg);
                -webkit-transform: rotate(120deg);
                overflow: hidden;
            }

            .manager .manager_info {
                margin-left: 108px;/*216px;*/
            }
            .manager .manager_info h5 {
                line-height: 25px;
                padding-bottom: 10px;;
                margin-bottom: 10px;
            }
            .manager .manager_info h5 a {
                color: #ffffff;
            }
            .manager .manager_info h5 a span {
                color: #ffffff;
            }
            .manager .manager_info .manager_des {
                color: #ffffff;
                font-size: 1.3rem;
                line-height: 25px;
            }
            .manager .manager_info .manager_des strong {
                color: #a0a0a0;
            }

            .manager li:hover{
                background: #58575c;
                -webkit-border-radius: 3px;
                -moz-border-radius: 3px;
                border-radius: 3px;
                -webkit-box-shadow:3px 3px 20px 3px #d3d3d3;
                -moz-box-shadow: 3px 3px 20px 3px #d3d3d3;
                box-shadow: 3px 3px 20px 3px #d3d3d3;
            }

            .manager {
                display: block;
            }
            .manager .manager_pic {
                position: absolute;
                margin-top: -35px;
            }

            .manager .box-img {
                width: 108px;
                height: 133px;
                background-size: 100%;
                background-repeat: no-repeat;
            }

            /*手机*/
            @media screen and (max-width:600px){
                .manager {
                    display: block;
                }
                .manager .manager_pic {
                    position: absolute;
                    margin-top: -35px;
                }

                .manager .box-img {
                    width: 108px;
                    height: 133px;
                    background-size: 100%;
                    background-repeat: no-repeat;
                }
            }
        </style>
        <ul class="manager clearfix"> <!-- TODO xhy -->
            <content action="lists" catid="$catid" moreinfo="1" page="$page" num="8" order="id DESC">
                <volist name="data" id="li">
                    <li>
                        <div class="manager_pic box-img box-img-rotate-left-60">
                            <div class="box-img box-img-rotate-right-120">
                                <div class="box-img box-img-rotate-left-60" style="background-image: url('{$li['thumb']}');"></div>
                            </div>
                        </div>
                        <div class="manager_info">
                            <div class="manager_des" id="content_{$li['id']}">
                                <textarea style="display:none;">{$li['content']}</textarea>
                            </div>
                        </div>
                    </li>
                </volist>
            </content>
        </ul>
        <!--manager end-->
    </div>
    <!--container end-->
</main>
<!--main end-->
<script type="text/javascript">
    <content action="lists" catid="$catid" moreinfo="1" page="$page" num="8" order="id DESC">
        <volist name="data" id="li">
            editormd.markdownToHTML("content_{$li['id']}");
        </volist>
    </content>
</script>
<template file="Content/footer.php"/>