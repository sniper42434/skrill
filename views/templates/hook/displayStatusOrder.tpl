{**
* 2015 Skrill
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
*
*  @author Skrill <contact@skrill.com>
*  @copyright  2015 Skrill
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*}

{if $module == "skrill"}
	{literal}
		<script>
			$( document ).ready(function() {
	    		$('#desc-order-standard_refund').css("display","none");
	    		$('#desc-order-partial_refund').css("display","none");
			});
		</script>
	{/literal}

	{if !is_null($successMessage)}
		<div class="alert alert-success">
			<button type="button" class="close" data-dismiss="alert">×</button>
		    {if $successMessage == "refund"}
			    {if {l s='SUCCESS_GENERAL_REFUND_PAYMENT' mod='skrill'} == "SUCCESS_GENERAL_REFUND_PAYMENT"}Your attempt to refund the payment success.{else}{l s='SUCCESS_GENERAL_REFUND_PAYMENT' mod='skrill'}{/if}
			{/if}
		</div>
	{/if}
	{if !is_null($errorMessage)}
		<div class="alert alert-danger">
			<button type="button" class="close" data-dismiss="alert">×</button>
		    {if $errorMessage == "refund"}
			    {if {l s='ERROR_GENERAL_REFUND_PAYMENT' mod='skrill'} == "ERROR_GENERAL_REFUND_PAYMENT"}Unfortunately, your attempt to refund the payment failed.{else}{l s='ERROR_GENERAL_REFUND_PAYMENT' mod='skrill'}{/if}
			{/if}
		</div>
	{/if}
{/if}
