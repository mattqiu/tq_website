<?php if (!defined('THINK_PATH')) exit(); if (!defined('SHUIPF_VERSION')) exit(); ?>
<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <link rel="icon" href="<?php echo getCustomData(8);?>" type="image/x-icon">
    <link rel="shortcut icon" href="<?php echo getCustomData(8);?>" type="image/x-icon">
    <title><?php if( isset($SEO['title']) && !empty($SEO['title']) ): echo ($SEO['title']); endif; echo ($SEO['site_title']); ?></title>
    <meta name="description" content="<?php echo ($SEO['description']); ?>" />
    <meta name="keywords" content="<?php echo ($SEO['keyword']); ?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="format-detection" content="email=no" />
    <meta name="HandheldFriendly" content="true" />
    <script type="text/javascript" src="<?php echo ($config_siteurl); ?>statics/tq/js/jquery.min.js"></script>
    <script type="text/javascript" src="<?php echo ($config_siteurl); ?>statics/tq/js/owl.carousel.js"></script>
    <link rel="stylesheet" href="<?php echo ($config_siteurl); ?>statics/tq/css/owl.carousel.css" />
    <link rel="stylesheet" href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" />
    <script type="text/javascript" src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<?php echo ($config_siteurl); ?>statics/tq/js/web.js"></script>
    <link rel="stylesheet" href="<?php echo ($config_siteurl); ?>statics/tq/css/animate.min.css" />
    <link rel="stylesheet" href="<?php echo ($config_siteurl); ?>statics/tq/css/shared.css" />
    <link rel="stylesheet" href="<?php echo ($config_siteurl); ?>statics/tq/css/style.css" />
    <!--图片延迟加载-->
    <script type="text/javascript" src="<?php echo ($config_siteurl); ?>statics/tq/js/jquery.lazyload.js"></script>
    <script type="text/javascript">
        jQuery(function () {
            jQuery("img").lazyload({ effect: "fadeIn" });
        });
    </script>
</head>
<body>
    <div id="menu-overlay-bg"></div>
    <!--header begin-->
    <header>
        <div class="container clearfix">
            <a href="/" class="logo"><img src="<?php echo getCustomData(3);?>" /></a>
            <!--nav_list begin-->
            <div id="menu-overlay">
                <ul class="nav_list">
                    <li><a href="/" class="nav_item0">首 页</a></li>
                    <li>
                        <a href="<?php echo U('lists', array('catid'=>2));?>" class="nav_item0">产 品</a>
                        <!--subclass begin  产品的下拉菜单样式与其他不同-->
                        <div class="subclass subclass_pro">
                            <div class="container clearfix">
                                 <?php  $cache = 0; $cacheID = to_guid_string(array('parentid'=>'2',)); if(0 && $_return = S( $cacheID ) ){ $data=$_return; }else{ $get_db = M(ucwords("category")); $data=$get_db->where(array('parentid'=>'2',))->limit(20)->select(); if(0){ S( $cacheID ,$data,$cache); }; } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="pro_line">
                                        <a href="<?php echo U('lists', array('catid'=>2));?>#<?php echo ($vo['letter']); ?>" class="erji"><img src="<?php echo getCategory($vo['catid'], 'extend.iconnormal');?>" width="22" height="22" /><span><?php echo ($vo['catname']); ?></span></a>
                                        <div class="sanji">
                                            <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>$vo['catid'],'order'=>'id DESC','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$li): $mod = ($i % 2 );++$i;?><a href="<?php echo ($li['url']); ?>"><span><img src="<?php echo ($li['thumb']); ?>" width="22" height="22" class="simg"><?php echo ($li['title']); ?></span></a><?php endforeach; endif; else: echo "" ;endif; ?>
                                        </div>
                                    </div><?php endforeach; endif; else: echo "" ;endif; ?>
                            </div>
                        </div>
                        <!--subclass end-->
                    </li>
                    <li>
                        <a href="<?php echo U('lists', array('catid'=>6));?>" class="nav_item0">解决方案</a>
                    </li>
                    <li>
                        <a href="<?php echo U('lists', array('catid'=>10));?>" class="nav_item0">案 例</a>
                    </li>
                    <li>
                        <a href="<?php echo U('lists', array('catid'=>13));?>" class="nav_item0">资讯中心</a>
                    </li>
                    <li>
                        <a href="<?php echo U('lists', array('catid'=>20));?>" class="nav_item0">资料下载</a>
                    </li>
                    <li>
                        <a href="<?php echo U('lists', array('catid'=>18));?>" class="nav_item0">关于我们</a>
                        <!--subclass begin-->
                        <div class="subclass">
                            <div class="container clearfix">
                                <a href="<?php echo U('lists', array('catid'=>18));?>"><span>公司介绍</span></a>
                                <a href="<?php echo U('lists', array('catid'=>17));?>"><span>管理团队</span></a>
                                <a href="<?php echo U('lists', array('catid'=>19));?>"><span>联系我们</span></a>
                            </div>
                        </div>
                        <!--subclass end-->
                    </li>
                </ul>
            </div>
            <!--nav_list end-->
            <!--menu-activator begin pad&phone导航弹出按钮-->
            <a class="menu-activator" id="menu_chu">
                <span class="descriptor">Menu</span>
                <div class="visual">
                    <i class="line line01"></i>
                    <i class="line line02"></i>
                    <i class="line line03"></i>
                    <i class="line line04"></i>
                </div>
            </a>
            <!--menu-activator end-->
            <!--menu-overlay begin pad&phone导航内容-->
            <!--menu-overlay end-->
        </div>
    </header>
    <!--header end-->
<link rel="stylesheet" href="<?php echo ($config_siteurl); ?>statics/editor.md/css/editormd.preview.min.css" />
<link rel="stylesheet" href="<?php echo ($config_siteurl); ?>statics/editor.md/css/editormd.css" />
<script src="<?php echo ($config_siteurl); ?>statics/editor.md/lib/marked.min.js"></script>
<script src="<?php echo ($config_siteurl); ?>statics/editor.md/lib/prettify.min.js"></script>
<script src="<?php echo ($config_siteurl); ?>statics/editor.md/editormd.min.js"></script>
<style>
    .editormd-preview-container, .editormd-html-preview {
        background: none;
    }
</style>
<!--main begin-->
<main>
    <!--banner_warp begin-->
    <div class="banner_warp" style="background-image: url('<?php echo getCategory(14,'image');?>');"></div>
    <!--banner_warp end-->
    <!--guide_warp begin-->
    <div class="guide_warp">
        <div class="container">
            <h4 class="guide_tit">关于我们</h4>
            <!--guide_scr begin-->
            <div id="guide_scr" class="owl-carousel">
                <div class="item"><a href="<?php echo U('lists', array('catid'=>18));?>"><span>公司介绍</span></a></div>
                <div class="item"><a href="<?php echo U('lists', array('catid'=>17));?>"><span>管理团队</span></a></div>
                <div class="item"><a href="<?php echo U('lists', array('catid'=>19));?>" class="guide_cur"><span>联系我们</span></a></div>
            </div>
            <!--guide_scr end-->
        </div>
    </div>
    <!--guide_warp end-->
    <!--container begin-->
    <div class="container">
        <!--intro begin-->
        <div id="content"><textarea style="display:none;"><?php echo getCustomData(2);?></textarea></div>
        <!--intro end-->
    </div>
    <!--container end-->
</main>
<!--main end-->
<script type="text/javascript">
    editormd.markdownToHTML("content");
</script>
<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
    <!--footer begin-->
    <footer>
        <!--footer_top begin-->
        <div class="footer_top">
            <div class="container clearfix">
                <a href="/" class="col-sm-2 foot_logo"><img src="<?php echo getCustomData(4);?>" width="104" height="30" /></a>
                <ul class="col-sm-7 foot_nav clearfix">
                    <li><a href="<?php echo U('lists', array('catid'=>2));?>">产 品</a></li>
                    <li><a href="<?php echo U('lists', array('catid'=>6));?>">解决方案</a></li>
                    <li><a href="<?php echo U('lists', array('catid'=>10));?>">案 例</a></li>
                    <li><a href="<?php echo U('lists', array('catid'=>13));?>">资讯中心</a></li>
                    <li><a href="<?php echo U('lists', array('catid'=>20));?>">资料下载</a></li>
                    <li><a href="<?php echo U('lists', array('catid'=>18));?>">关于我们</a></li>
                </ul>
                <ul class="col-sm-3 shared clearfix">
                    <li>
                        <a href="javascript:;" onclick="$('.jiathis_button_qzone').trigger('click');"><img src="<?php echo ($config_siteurl); ?>statics/tq/images/shared_ico1.png" width="22" height="22" alt="腾讯QQ" /></a>
                    </li>
                    <li>
                        <a href="javascript:;" onclick="$('.jiathis_button_weixin').trigger('click');"><img src="<?php echo ($config_siteurl); ?>statics/tq/images/shared_ico2.png" width="22" height="22" alt="微信" /></a>
                    </li>
                    <li>
                        <a href="javascript:;" onclick="$('.jiathis_button_tsina').trigger('click');"><img src="<?php echo ($config_siteurl); ?>statics/tq/images/shared_ico3.png" width="22" height="22" alt="新浪微博" /></a>
                    </li>
                </ul>
            </div>
        </div>
        <!--footer_top end-->
        <div class="foot_bot">
            <p>Copyright©2016 TianQue Keji Corporation All Rights Reserved.&nbsp;&nbsp;蜀ICP备16008841号-1 </p>
        </div>
        <!--float begin-->
        <ul class="float">
            <li>
                <a href="javascript:void(0);" title="返回顶部"><img src="<?php echo ($config_siteurl); ?>statics/tq/images/float_ico1a.png" width="30" height="30" /><img src="<?php echo ($config_siteurl); ?>statics/tq/images/float_ico1b.png"
                        width="30" height="30" class="ico_cur" />返回顶部</a>
            </li>
            <li>
                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo getCustomData(5);?>&site=qq&menu=yes" title="在线客服" style="cursor:pointer;">
                    <img src="<?php echo ($config_siteurl); ?>statics/tq/images/float_ico2a.png" width="30" height="30" />
                    <img src="<?php echo ($config_siteurl); ?>statics/tq/images/float_ico2b.png" width="30" height="30" class="ico_cur" />
                    在线客服
                </a>
            </li>
            <li>
                <a href="javascript:void(0);" title="热线电话"><img src="<?php echo ($config_siteurl); ?>statics/tq/images/float_ico3a.png" width="30" height="30" /><img src="<?php echo ($config_siteurl); ?>statics/tq/images/float_ico3b.png"
                        width="30" height="30" class="ico_cur" />热线电话</a>
                <div class="float_info float_tel"><?php echo getCustomData(6);?></div>
            </li>
            <li>
                <a href="javascript:void(0);" title="微信"><img src="<?php echo ($config_siteurl); ?>statics/tq/images/float_ico4a.png" width="30" height="30" /><img src="<?php echo ($config_siteurl); ?>statics/tq/images/float_ico4b.png"
                        width="30" height="30" class="ico_cur" />微信</a>
                <div class="float_info float_ma"><img src="<?php echo getCustomData(7);?>" width="136" height="136" />扫一扫<br />立即关注TQ科技公众号</div>
            </li>
        </ul>
        <!--float end-->
    </footer>
    <!--footer end-->
</body>
</html>