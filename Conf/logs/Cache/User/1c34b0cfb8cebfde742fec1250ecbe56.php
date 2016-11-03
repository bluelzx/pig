<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> 微信公众平台源码,微信机器人源码,微信自动回复源码 PigCms多用户微信营销系统</title>
<meta http-equiv="MSThemeCompatible" content="Yes" />
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/style_2_common.css?BPm" />
<script src="<?php echo RES;?>/js/common.js" type="text/javascript"></script>
<link href="<?php echo RES;?>/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body id="nv_member">
<div style="line-height:200%;padding:10px 20px;">
支付状态：<?php if($thisOrder["paid"] == 1): ?>已付款<?php else: ?>未付款<?php endif; ?><br>
订购人：<?php echo ($thisOrder["truename"]); ?><br>
电话：<?php echo ($thisOrder["tel"]); ?><br>
地址：<?php echo ($thisOrder["address"]); ?><br>
总数：<?php echo ($totalCount); ?><br>
商品金额：<span style="color:#f30;font-size:16px;font-weight:bold"><?php echo ($totalFee); ?></span>元<br>
运费：<span style="color:#f30;font-size:16px;font-weight:bold"><?php echo ($mailprice); ?></span>元<br>
应付金额：<span style="color:#f30;font-size:16px;font-weight:bold"><?php echo ($thisOrder['price']); ?></span>元<br>
兑换积分：<span style="color:#f30;font-size:16px;font-weight:bold"><?php echo ($thisOrder['score']); ?></span>分<br>
</div>

<form class="form" method="post" id="form" action=""> 
<?php if($isUpdate == 1): ?><input type="hidden" name="id" value="<?php echo ($set["id"]); ?>" /><?php endif; ?>
<input type="hidden" name="discount" id="discount" value="<?php echo ($set["discount"]); ?>" />
    <div class="msgWrap bgfc"> 
     <table class="userinfoArea" style=" margin:0;" border="0" cellspacing="0" cellpadding="0" width="100%"> 
      <tbody> 
      <tr> 
        <th><span class="red">*</span>支付状态：</th> 
        <td><select name="paid"><option value="0" <?php if($thisOrder["paid"] == 0): ?>selected<?php endif; ?>>未付款</option><option value="1" <?php if($thisOrder["paid"] == 1): ?>selected<?php endif; ?>>已付款</option></select></td> 
       </tr> 
       <tr> 
        <th><span class="red">*</span>发货状态：</th> 
        <td><select name="sent"><option value="0" <?php if($thisOrder["sent"] == 0): ?>selected<?php endif; ?>>未发</option><option value="1" <?php if($thisOrder["sent"] == 1): ?>selected<?php endif; ?>>已发</option></select></td> 
       </tr> 
       <tr> 
        <th><span class="red">*</span>快递公司：</th>
        <td><input type="text" name="logistics" value="<?php echo ($thisOrder["logistics"]); ?>" class="px" style="width:200px;" /></td> 
       </tr>
        <tr> 
        <th><span class="red">*</span>快递单号：</th>
        <td><input type="text" name="logisticsid" value="<?php echo ($thisOrder["logisticsid"]); ?>" class="px" style="width:200px;" /></td> 
       </tr>
       
       <tr>         
       <th>&nbsp;</th>
       <td>
      <input type="hidden" name="groupon" value="1" />
       <button type="submit" name="button" class="btnGreen">保存</button> </td> 
       </tr> 
      </tbody> 
     </table> 
     </div>
    
   </form> 
   
<table class="ListProduct" border="0" cellspacing="0" cellpadding="0" width="100%">
<thead>
<tr>
<th width="120" align="center" style="text-align:center">名称</th>
<th class="60" align="center" style="text-align:center">详情</th>
<th width="160" align="center" style="text-align:center">单价（元）</th>

</tr>
</thead>
<tbody>
<tr></tr>
<?php if(is_array($products)): $i = 0; $__LIST__ = $products;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$o): $mod = ($i % 2 );++$i;?><tr>
<td align="center">
<img src="<?php echo ($o["logourl"]); ?>"  width="100"/><br><?php echo ($o["name"]); ?></td>
<td align="center">
<?php if(empty($o['detail']) != true): if(is_array($o['detail'])): $i = 0; $__LIST__ = $o['detail'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$row): $mod = ($i % 2 );++$i;?>单价：￥<?php echo ($row["price"]); ?><br/>
<?php echo ($o["colorTitle"]); if(empty($row['colorName']) != true): ?>：<?php echo ($row["colorName"]); ?><br/><?php endif; ?>
<?php echo ($o["formatTitle"]); if(empty($row['formatName']) != true): ?>：<?php echo ($row["formatName"]); ?><br/><?php endif; ?>
数量：<?php echo ($row["count"]); ?><br/><?php endforeach; endif; else: echo "" ;endif; ?>
<?php else: ?>
数量：<?php echo ($o["count"]); ?><br/><?php endif; ?>
</td>
<?php if(empty($o['detail']) != true): ?><td align="center"><?php {echo $o['detail'][0]['price'];} ?></td>
<?php else: ?>
<td align="center"><?php echo ($o["price"]); ?></td><?php endif; ?>
</tr><?php endforeach; endif; else: echo "" ;endif; ?>
</tbody>
</table>
</body>
</html>