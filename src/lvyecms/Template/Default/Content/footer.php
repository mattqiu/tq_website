<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
    <!--footer begin-->
    <footer>
        <!--footer_top begin-->
        <div class="footer_top">
            <div class="container clearfix">
                <a href="/" class="col-sm-2 foot_logo"><img src="{:getCustomData(4)}" width="104" height="30" /></a>
                <ul class="col-sm-7 foot_nav clearfix">
                    <li><a href="{:U('lists', array('catid'=>2))}">产 品</a></li>
                    <li><a href="{:U('lists', array('catid'=>6))}">解决方案</a></li>
                    <li><a href="{:U('lists', array('catid'=>10))}">案 例</a></li>
                    <li><a href="{:U('lists', array('catid'=>13))}">资讯中心</a></li>
                    <li><a href="{:U('lists', array('catid'=>20))}">资料下载</a></li>
                    <li><a href="{:U('lists', array('catid'=>18))}">关于我们</a></li>
                </ul>
                <ul class="col-sm-3 shared clearfix">
                    <li>
                        <a href="javascript:;" onclick="$('.jiathis_button_qzone').trigger('click');"><img src="{$config_siteurl}statics/tq/images/shared_ico1.png" width="22" height="22" alt="腾讯QQ" /></a>
                    </li>
                    <li>
                        <a href="javascript:;" onclick="$('.jiathis_button_weixin').trigger('click');"><img src="{$config_siteurl}statics/tq/images/shared_ico2.png" width="22" height="22" alt="微信" /></a>
                    </li>
                    <li>
                        <a href="javascript:;" onclick="$('.jiathis_button_tsina').trigger('click');"><img src="{$config_siteurl}statics/tq/images/shared_ico3.png" width="22" height="22" alt="新浪微博" /></a>
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
                <a href="javascript:void(0);" title="返回顶部"><img src="{$config_siteurl}statics/tq/images/float_ico1a.png" width="30" height="30" /><img src="{$config_siteurl}statics/tq/images/float_ico1b.png"
                        width="30" height="30" class="ico_cur" />返回顶部</a>
            </li>
            <li>
                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin={:getCustomData(5)}&site=qq&menu=yes" title="在线客服" style="cursor:pointer;">
                    <img src="{$config_siteurl}statics/tq/images/float_ico2a.png" width="30" height="30" />
                    <img src="{$config_siteurl}statics/tq/images/float_ico2b.png" width="30" height="30" class="ico_cur" />
                    在线客服
                </a>
            </li>
            <li>
                <a href="javascript:void(0);" title="热线电话"><img src="{$config_siteurl}statics/tq/images/float_ico3a.png" width="30" height="30" /><img src="{$config_siteurl}statics/tq/images/float_ico3b.png"
                        width="30" height="30" class="ico_cur" />热线电话</a>
                <div class="float_info float_tel">{:getCustomData(6)}</div>
            </li>
            <li>
                <a href="javascript:void(0);" title="微信"><img src="{$config_siteurl}statics/tq/images/float_ico4a.png" width="30" height="30" /><img src="{$config_siteurl}statics/tq/images/float_ico4b.png"
                        width="30" height="30" class="ico_cur" />微信</a>
                <div class="float_info float_ma"><img src="{:getCustomData(7)}" width="136" height="136" />扫一扫<br />立即关注TQ科技公众号</div>
            </li>
        </ul>
        <!--float end-->
    </footer>
    <!--footer end-->
</body>
</html>