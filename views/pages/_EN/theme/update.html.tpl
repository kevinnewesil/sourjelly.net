<form action="{base}/themes/update/{id}/?ns=controllers&amp;path=controller_path" class="form themeForm" method="post">
	<fieldset>
		<legend>Theme name</legend>
		<input type="hidden" name="id" value="{id}">
		<div class="control-group">
			<label for="themeName" class="control-label">Theme name</label>
			<div class="controls">
				<input type="text" name="themeName" id="themeName" value="{themeName}" placeholder="Theme name">
			</div>
		</div>
	</fieldset>
	<fieldset>
		<legend>Colors : Gray &amp; Accent colors</legend>
		<div class="row">
			<!-- Grays -->
			<div class="span4">
				<div class="control-group">
					<label for="black" class="control-label">@black</label>
					<div class="controls">
						<input type="text" name="black" id="black" value="{black}">
					</div>
				</div>
				<div class="control-group">
					<label for="gray" class="control-label">@gray</label>
					<div class="controls">
						<input type="text" name="gray" value='{gray}' id="gray">
					</div>
				</div>
				<div class="control-group">
					<label for="white" class="control-label">@white</label>
					<div class="controls">
						<input type="text" name="white" value='{white}' id="white">
					</div>
				</div>
				<div class="control-group">
					<label for="grayDark" class="control-label">@grayDark</label>
					<div class="controls">
						<input type="text" name="grayDark" value='{grayDark}' id="grayDark">
					</div>
				</div>
				<div class="control-group">
					<label for="grayDarker" class="control-label">@grayDarker</label>
					<div class="controls">
						<input type="text" name="grayDarker" value='{grayDarker}' id="grayDarker">
					</div>
				</div>
				<div class="control-group">
					<label for="grayLight" class="control-label">@grayLight</label>
					<div class="controls">
						<input type="text" name="grayLight" value='{grayLight}' id="grayLight">
					</div>
				</div>
				<div class="control-group">
					<label for="grayLighter" class="control-label">@grayLighter</label>
					<div class="controls">
						<input type="text" name="grayLighter" value='{grayLighter}' id="grayLighter">
					</div>
				</div>
			</div>
			<!-- Accent colors -->
			<div class="span4">
				<div class="control-group">
					<label for="blue" class="control-label">@blue</label>
					<div class="controls">
						<input type="text" name="blue" value='{blue}' id="blue">
					</div>
				</div>
				<div class="control-group">
					<label for="blueDark" class="control-label">@blueDark</label>
					<div class="controls">
						<input type="text" name="blueDark" value='{blueDark}' id="blueDark">
					</div>
				</div>
				<div class="control-group">
					<label for="green" class="control-label">@green</label>
					<div class="controls">
						<input type="text" name="green" value='{green}' id="green">
					</div>
				</div>
				<div class="control-group">
					<label for="red" class="control-label">@red</label>
					<div class="controls">
						<input type="text" name="red" value='{red}' id="red">
					</div>
				</div>
				<div class="control-group">
					<label for="yellow" class="control-label">@yellow</label>
					<div class="controls">
						<input type="text" name="yellow" value='{yellow}' id="yellow">
					</div>
				</div>
				<div class="control-group">
					<label for="orange" class="control-label">@orange</label>
					<div class="controls">
						<input type="text" name="orange" value='{orange}' id="orange">
					</div>
				</div>
				<div class="control-group">
					<label for="pink" class="control-label">@pink</label>
					<div class="controls">
						<input type="text" name="pink" value='{pink}' id="pink">
					</div>
				</div>
				<div class="control-group">
					<label for="purple" class="control-label">@purple</label>
					<div class="controls">
						<input type="text" name="purple" value='{purple}' id="purple">
					</div>
				</div>
			</div>
		</div>
	</fieldset>

	<fieldset>
		<legend>Scaffolding &amp; Links</legend>

		<!-- Scaffolding -->
		<div class="control-group">
			<label for="bodyBackground" class="control-label">@bodyBackground</label>
			<div class="controls">
				<input type="text" name="bodyBackground" value='{bodyBackground}' id="bodyBackground">
			</div>
		</div><div class="control-group">
			<label for="textColor" class="control-label">@textColor</label>
			<div class="controls">
				<input type="text" name="textColor" value='{textColor}' id="textColor">
			</div>

		<!-- Links -->
		</div><div class="control-group">
			<label for="linkColor" class="control-label">@linkColor</label>
			<div class="controls">
				<input type="text" name="linkColor" value='{linkColor}' id="linkColor">
			</div>
		</div><div class="control-group">
			<label for="linkColorHover" class="control-label">@linkColorHover</label>
			<div class="controls">
				<input type="text" name="linkColorHover" value='{linkColorHover}' id="linkColorHover">
			</div>
		</div>
	</fieldset>

	<fieldset>
		<legend>Typography : FontFamilies, fontsizes &amp; headings</legend>
		<div class="row">
			<!-- Typography -->
			<div class="fontFamilies span4">
				<div class="control-group">
					<label for="sansFontFamily" class="control-label">@sansFontFamily</label>
					<div class="controls">
						<input type="text" name="sansFontFamily" value='{sansFontFamily}' id="sansFontFamily">
					</div>
				</div>

				<div class="control-group">
					<label for="serifFontFamily" class="control-label">@serifFontFamily</label>
					<div class="controls">
						<input type="text" name="serifFontFamily" value='{serifFontFamily}' id="serifFontFamily">
					</div>
				</div>

				<div class="control-group">
					<label for="monoFontFamily" class="control-label">@monoFontFamily</label>
					<div class="controls">
						<input type="text" name="monoFontFamily" value='{monoFontFamily}' id="monoFontFamily">
					</div>
				</div>
			</div>

			<div class="fontsizes span4">
				<div class="control-group">
					<label for="fontSizeMini" class="control-label">@fontSizeMini</label>
					<div class="controls">
						<input type="text" name="fontSizeMini" value="{fontSizeMini}" id="fontSizeMini">
					</div>
				</div>

				<div class="control-group">
					<label for="fontSizeSmall" class="control-label">@fontSizeSmall</label>
					<div class="controls">
						<input type="text" name="fontSizeSmall" value="{fontSizeSmall}" id="fontSizeSmall">
					</div>
				</div>

				<div class="control-group">
					<label for="baseFontSize" class="control-label">@baseFontSize</label>
					<div class="controls">
						<input type="text" name="baseFontSize" value="{baseFontSize}" id="baseFontSize">
					</div>
				</div>

				<div class="control-group">
					<label for="fontSizeLarge" class="control-label">@fontSizeLarge</label>
					<div class="controls">
						<input type="text" name="fontSizeLarge" value="{fontSizeLarge}" id="fontSizeLarge">
					</div>
				</div>

				<div class="control-group">
					<label for="baseFontFamily" class="control-label">@baseFontFamily</label>
					<div class="controls">
						<input type="text" name="baseFontFamily" value="{baseFontFamily}" id="baseFontFamily">
					</div>
				</div>

				<div class="control-group">
					<label for="baseLineHeight" class="control-label">@baseLineHeight</label>
					<div class="controls">
						<input type="text" name="baseLineHeight" value="{baseLineHeight}" id="baseLineHeight">
					</div>
				</div>

				<div class="control-group">
					<label for="altFontFamily" class="control-label">@altFontFamily</label>
					<div class="controls">
						<input type="text" name="altFontFamily" value="{altFontFamily}" id="altFontFamily">
					</div>
				</div>

				<div class="control-group">
					<label for="borderRadiusSmall" class="control-label">@borderRadiusSmall</label>
					<div class="controls">
						<input type="text" name="borderRadiusSmall" value="{borderRadiusSmall}" id="borderRadiusSmall">
					</div>
				</div>

				<div class="control-group">
					<label for="baseBorderRadius" class="control-label">@baseBorderRadius</label>
					<div class="controls">
						<input type="text" name="baseBorderRadius" value="{baseBorderRadius}" id="baseBorderRadius">
					</div>
				</div>

				<div class="control-group">
					<label for="borderRadiusLarge" class="control-label">@borderRadiusLarge</label>
					<div class="controls">
						<input type="text" name="borderRadiusLarge" value="{borderRadiusLarge}" id="borderRadiusLarge">
					</div>
				</div>

				<div class="control-group">
					<label for="paddingMini" class="control-label">@paddingMini</label>
					<div class="controls">
						<input type="text" name="paddingMini" value="{paddingMini}" id="paddingMini">
					</div>
				</div>
				

				<div class="control-group">
					<label for="paddingSmall" class="control-label">@paddingSmall</label>
					<div class="controls">
						<input type="text" name="paddingSmall" value="{paddingSmall}" id="paddingSmall">
					</div>
				</div>
				
				<div class="control-group">
					<label for="paddingLarge" class="control-label">@paddingLarge</label>
					<div class="controls">
						<input type="text" name="paddingLarge" value="{paddingLarge}" id="paddingLarge">
					</div>
				</div>
			</div>

			<div class="span4">
				<div class="control-group">
					<label for="headingsFontFamily" class="control-label">@headingsFontFamily</label>
					<div class="controls">
						<input type="text" name="headingsFontFamily" value="{headingsFontFamily}" id="headingsFontFamily">
					</div>
				</div>

				<div class="control-group">
					<label for="headingsFontWeight" class="control-label">@headingsFontWeight</label>
					<div class="controls">
						<input type="text" name="headingsFontWeight" value="{headingsFontWeight}" id="headingsFontWeight">
					</div>
				</div>

				<div class="control-group">
					<label for="headingsColor" class="control-label">@headingsColor</label>
					<div class="controls">
						<input type="text" name="headingsColor" value="{headingsColor}" id="headingsColor">
					</div>
				</div>
			</div>
		</div>

	</fieldset>

	<fieldset>
		<legend>Buttons</legend>
		<div class="row">

			<!-- Buttons -->
			<div class="span4">
				<div class="control-group">
					<label for="btnBackground" class="control-label">@btnBackground</label>
					<div class="controls">
						<input type="text" name="btnBackground" value="{btnBackground}" id="btnBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="btnBackgroundHighlight" class="control-label">@btnBackgroundHighlight</label>
					<div class="controls">
						<input type="text" name="btnBackgroundHighlight" value="{btnBackgroundHighlight}" id="btnBackgroundHighlight">
					</div>
				</div>
				<div class="control-group">
					<label for="btnBorder" class="control-label">@btnBorder</label>
					<div class="controls">
						<input type="text" name="btnBorder" value="{btnBorder}" id="btnBorder">
					</div>
				</div>
				<div class="control-group">
					<label for="btnPrimaryBackground" class="control-label">@btnPrimaryBackground</label>
					<div class="controls">
						<input type="text" name="btnPrimaryBackground" value="{btnPrimaryBackground}" id="btnPrimaryBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="btnPrimaryBackgroundHighlight" class="control-label">@btnPrimaryBackgroundHighlight</label>
					<div class="controls">
						<input type="text" name="btnPrimaryBackgroundHighlight" value="{btnPrimaryBackgroundHighlight}" id="btnPrimaryBackgroundHighlight">
					</div>
				</div>
			</div>

			<div class="span4">
				<div class="control-group">
					<label for="btnInfoBackground" class="control-label">@btnInfoBackground</label>
					<div class="controls">
						<input type="text" name="btnInfoBackground" value="{btnInfoBackground}" id="btnInfoBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="btnInfoBackgroundHighlight" class="control-label">@btnInfoBackgroundHighlight</label>
					<div class="controls">
						<input type="text" name="btnInfoBackgroundHighlight" value="{btnInfoBackgroundHighlight}" id="btnInfoBackgroundHighlight">
					</div>
				</div>
				<div class="control-group">
					<label for="btnSuccessBackground" class="control-label">@btnSuccessBackground</label>
					<div class="controls">
						<input type="text" name="btnSuccessBackground" value="{btnSuccessBackground}" id="btnSuccessBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="btnSuccessBackgroundHighlight" class="control-label">@btnSuccessBackgroundHighlight</label>
					<div class="controls">
						<input type="text" name="btnSuccessBackgroundHighlight" value="{btnSuccessBackgroundHighlight}" id="btnSuccessBackgroundHighlight">
					</div>
				</div>
				<div class="control-group">
					<label for="btnWarningBackground" class="control-label">@btnWarningBackground</label>
					<div class="controls">
						<input type="text" name="btnWarningBackground" value="{btnWarningBackground}" id="btnWarningBackground">
					</div>
				</div>
			</div>

			<div class="span4">
				<div class="control-group">
					<label for="btnWarningBackgroundHighlight" class="control-label">@btnWarningBackgroundHighlight</label>
					<div class="controls">
						<input type="text" name="btnWarningBackgroundHighlight" value="{btnWarningBackgroundHighlight}" id="btnWarningBackgroundHighlight">
					</div>
				</div>
				<div class="control-group">
					<label for="btnDangerBackground" class="control-label">@btnDangerBackground</label>
					<div class="controls">
						<input type="text" name="btnDangerBackground" value="{btnDangerBackground}" id="btnDangerBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="btnDangerBackgroundHighlight" class="control-label">@btnDangerBackgroundHighlight</label>
					<div class="controls">
						<input type="text" name="btnDangerBackgroundHighlight" value="{btnDangerBackgroundHighlight}" id="btnDangerBackgroundHighlight">
					</div>
				</div>
				<div class="control-group">
					<label for="btnInverseBackground" class="control-label">@btnInverseBackground</label>
					<div class="controls">
						<input type="text" name="btnInverseBackground" value="{btnInverseBackground}" id="btnInverseBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="btnInverseBackgroundHighlight" class="control-label">@btnInverseBackgroundHighlight</label>
					<div class="controls">
						<input type="text" name="btnInverseBackgroundHighlight" value="{btnInverseBackgroundHighlight}" id="btnInverseBackgroundHighlight">
					</div>
				</div>
			</div>
		</div>
	</fieldset>

	<fieldset>
		<legend>Tables &amp; Forms</legend>
		<div class="row">

			<!-- Tables -->
			<div class="span4">
				<div class="control-group">
					<label for="tableBackground" class="control-label">@tableBackground</label>
					<div class="controls">
						<input type="text" name="tableBackground" value="{tableBackground}" id="tableBackground">
					</div>
				</div>

				<div class="control-group">
					<label for="tableBackgroundAccent" class="control-label">@tableBackgroundAccent</label>
					<div class="controls">
						<input type="text" name="tableBackgroundAccent" value="{tableBackgroundAccent}" id="tableBackgroundAccent">
					</div>
				</div>

				<div class="control-group">
					<label for="tableBackgroundHover" class="control-label">@tableBackgroundHover</label>
					<div class="controls">
						<input type="text" name="tableBackgroundHover" value="{tableBackgroundHover}" id="tableBackgroundHover">
					</div>
				</div>

				<div class="control-group">
					<label for="tableBorder" class="control-label">@tableBorder</label>
					<div class="controls">
						<input type="text" name="tableBorder" value="{tableBorder}" id="tableBorder">
					</div>
				</div>
			</div>

			<!-- Forms -->
			<div class="span4">
				<div class="control-group">
					<label for="inputBackground" class="control-label">@inputBackground</label>
					<div class="controls">
						<input type="text" name="inputBackground" value="{inputBackground}" id="inputBackground">
					</div>
				</div>

				<div class="control-group">
					<label for="inputHeight" class="control-label">@inputHeight</label>
					<div class="controls">
						<input type="text" name="inputHeight" value="{inputHeight}" id="inputHeight">
					</div>
				</div>

				<div class="control-group">
					<label for="inputBorder" class="control-label">@inputBorder</label>
					<div class="controls">
						<input type="text" name="inputBorder" value="{inputBorder}" id="inputBorder">
					</div>
				</div>

				<div class="control-group">
					<label for="inputBorderRadius" class="control-label">@inputBorderRadius</label>
					<div class="controls">
						<input type="text" name="inputBorderRadius" value="{inputBorderRadius}" id="inputBorderRadius">
					</div>
				</div>

				<div class="control-group">
					<label for="inputDisabledBackground" class="control-label">@inputDisabledBackground</label>
					<div class="controls">
						<input type="text" name="inputDisabledBackground" value="{inputDisabledBackground}" id="inputDisabledBackground">
					</div>
				</div>

				<div class="control-group">
					<label for="formActionsBackground" class="control-label">@formActionsBackground</label>
					<div class="controls">
						<input type="text" name="formActionsBackground" value="{formActionsBackground}" id="formActionsBackground">
					</div>
				</div>
			</div>
		</div>

	</fieldset>

	<fieldset>
		<Legend>Navbar, Navbar-inverse &amp; Dropdowns</Legend>

		<div class="row">
			<!-- Navbar -->
			<div class="span4">
				<div class="control-group">
					<label for="navbarCollapseWidth" class="control-label">@navbarCollapseWidth</label>
					<div class="controls">
						<input type="text" name="navbarCollapseWidth" value="{navbarCollapseWidth}" id="navbarCollapseWidth">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarHeight" class="control-label">@navbarHeight</label>
					<div class="controls">
						<input type="text" name="navbarHeight" value="{navbarHeight}" id="navbarHeight">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarBackgroundHighlight" class="control-label">@navbarBackgroundHighlight</label>
					<div class="controls">
						<input type="text" name="navbarBackgroundHighlight" value="{navbarBackgroundHighlight}" id="navbarBackgroundHighlight">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarBackground" class="control-label">@navbarBackground</label>
					<div class="controls">
						<input type="text" name="navbarBackground" value="{navbarBackground}" id="navbarBackground">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarBorder" class="control-label">@navbarBorder</label>
					<div class="controls">
						<input type="text" name="navbarBorder" value="{navbarBorder}" id="navbarBorder">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarText" class="control-label">@navbarText</label>
					<div class="controls">
						<input type="text" name="navbarText" value="{navbarText}" id="navbarText">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarLinkColor" class="control-label">@navbarLinkColor</label>
					<div class="controls">
						<input type="text" name="navbarLinkColor" value="{navbarLinkColor}" id="navbarLinkColor">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarLinkColorHover" class="control-label">@navbarLinkColorHover</label>
					<div class="controls">
						<input type="text" name="navbarLinkColorHover" value="{navbarLinkColorHover}" id="navbarLinkColorHover">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarLinkColorActive" class="control-label">@navbarLinkColorActive</label>
					<div class="controls">
						<input type="text" name="navbarLinkColorActive" value="{navbarLinkColorActive}" id="navbarLinkColorActive">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarLinkBackgroundHover" class="control-label">@navbarLinkBackgroundHover</label>
					<div class="controls">
						<input type="text" name="navbarLinkBackgroundHover" value="{navbarLinkBackgroundHover}" id="navbarLinkBackgroundHover">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarLinkBackgroundActive" class="control-label">@navbarLinkBackgroundActive</label>
					<div class="controls">
						<input type="text" name="navbarLinkBackgroundActive" value="{navbarLinkBackgroundActive}" id="navbarLinkBackgroundActive">
					</div>
				</div>


				<div class="control-group">
					<label for="navbarCollapseDesktopWidth" class="control-label">@navbarCollapseDesktopWidth</label>
					<div class="controls">
						<input type="text" name="navbarCollapseDesktopWidth" value="{navbarCollapseDesktopWidth}" id="navbarCollapseDesktopWidth">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarBrandColor" class="control-label">@navbarBrandColor</label>
					<div class="controls">
						<input type="text" name="navbarBrandColor" value="{navbarBrandColor}" id="navbarBrandColor">
					</div>
				</div>


			</div>
			<!-- Inverted navbar -->
			<div class="span4">
				<div class="control-group">
					<label for="navbarInverseBackground" class="control-label">@navbarInverseBackground</label>
					<div class="controls">
						<input type="text" name="navbarInverseBackground" value="{navbarInverseBackground}" id="navbarInverseBackground">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseBackgroundHighlight" class="control-label">@navbarInverseBackgroundHighlight</label>
					<div class="controls">
						<input type="text" name="navbarInverseBackgroundHighlight" value="{navbarInverseBackgroundHighlight}" id="navbarInverseBackgroundHighlight">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseBorder" class="control-label">@navbarInverseBorder</label>
					<div class="controls">
						<input type="text" name="navbarInverseBorder" value="{navbarInverseBorder}" id="navbarInverseBorder">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseText" class="control-label">@navbarInverseText</label>
					<div class="controls">
						<input type="text" name="navbarInverseText" value="{navbarInverseText}" id="navbarInverseText">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseLinkColor" class="control-label">@navbarInverseLinkColor</label>
					<div class="controls">
						<input type="text" name="navbarInverseLinkColor" value="{navbarInverseLinkColor}" id="navbarInverseLinkColor">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseLinkColorHover" class="control-label">@navbarInverseLinkColorHover</label>
					<div class="controls">
						<input type="text" name="navbarInverseLinkColorHover" value="{navbarInverseLinkColorHover}" id="navbarInverseLinkColorHover">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseLinkColorActive" class="control-label">@navbarInverseLinkColorHover</label>
					<div class="controls">
						<input type="text" name="navbarInverseLinkColorActive" value="{navbarInverseLinkColorHover}" id="navbarInverseLinkColorActive">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseLinkBackgroundHover" class="control-label">@navbarInverseLinkBackgroundHover</label>
					<div class="controls">
						<input type="text" name="navbarInverseLinkBackgroundHover" value="{navbarInverseLinkBackgroundHover}" id="navbarInverseLinkBackgroundHover">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseLinkBackgroundActive" class="control-label">@navbarInverseLinkBackgroundActive</label>
					<div class="controls">
						<input type="text" name="navbarInverseLinkBackgroundActive" value="{navbarInverseLinkBackgroundActive}" id="navbarInverseLinkBackgroundActive">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseSearchBackground" class="control-label">@navbarInverseSearchBackground</label>
					<div class="controls">
						<input type="text" name="navbarInverseSearchBackground" value="{navbarInverseSearchBackground}" id="navbarInverseSearchBackground">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseSearchBackgroundFocus" class="control-label">@navbarInverseSearchBackgroundFocus</label>
					<div class="controls">
						<input type="text" name="navbarInverseSearchBackgroundFocus" value="{navbarInverseSearchBackgroundFocus}" id="navbarInverseSearchBackgroundFocus">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseSearchBorder" class="control-label">@navbarInverseSearchBorder</label>
					<div class="controls">
						<input type="text" name="navbarInverseSearchBorder" value="{navbarInverseSearchBorder}" id="navbarInverseSearchBorder">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseSearchidColor" class="control-label">@navbarInverseSearchidColor</label>
					<div class="controls">
						<input type="text" name="navbarInverseSearchidColor" value="{navbarInverseSearchidColor}" id="navbarInverseSearchidColor">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseBrandColor" class="control-label">@navbarInverseBrandColor</label>
					<div class="controls">
						<input type="text" name="navbarInverseBrandColor" value="{navbarInverseBrandColor}" id="navbarInverseBrandColor">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseSearchPlaceholderColor" class="control-label">@navbarInverseSearchPlaceholderColor</label>
					<div class="controls">
						<input type="text" name="navbarInverseSearchPlaceholderColor" value="{navbarInverseSearchPlaceholderColor}" id="navbarInverseSearchPlaceholderColor">
					</div>
				</div>
			</div>

			<!-- Dropdowns -->
			<div class="span4">
				<div class="control-group">
					<label for="dropdownBackground" class="control-label">@dropdownBackground</label>
					<div class="controls">
						<input type="text" name="dropdownBackground" value="{dropdownBackground}" id="dropdownBackground">
					</div>
				</div>

				<div class="control-group">
					<label for="dropdownBorder" class="control-label">@dropdownBorder</label>
					<div class="controls">
						<input type="text" name="dropdownBorder" value="{dropdownBorder}" id="dropdownBorder">
					</div>
				</div>

				<div class="control-group">
					<label for="dropdownDividerTop" class="control-label">@dropdownDividerTop</label>
					<div class="controls">
						<input type="text" name="dropdownDividerTop" value="{dropdownDividerTop}" id="dropdownDividerTop">
					</div>
				</div>

				<div class="control-group">
					<label for="dropdownDividerBottom" class="control-label">@dropdownDividerBottom</label>
					<div class="controls">
						<input type="text" name="dropdownDividerBottom" value="{dropdownDividerBottom}" id="dropdownDividerBottom">
					</div>
				</div>

				<div class="control-group">
					<label for="dropdownLinkColor" class="control-label">@dropdownLinkColor</label>
					<div class="controls">
						<input type="text" name="dropdownLinkColor" value="{dropdownLinkColor}" id="dropdownLinkColor">
					</div>
				</div>

				<div class="control-group">
					<label for="dropdownLinkColorHover" class="control-label">@dropdownLinkColorHover</label>
					<div class="controls">
						<input type="text" name="dropdownLinkColorHover" value="{dropdownLinkColorHover}" id="dropdownLinkColorHover">
					</div>
				</div>

				<div class="control-group">
					<label for="dropdownLinkColorActive" class="control-label">@dropdownLinkColorActive</label>
					<div class="controls">
						<input type="text" name="dropdownLinkColorActive" value="{dropdownLinkColorActive}" id="dropdownLinkColorActive">
					</div>
				</div>

				<div class="control-group">
					<label for="dropdownLinkBackgroundActive" class="control-label">@dropdownLinkBackgroundActive</label>
					<div class="controls">
						<input type="text" name="dropdownLinkBackgroundActive" value="{dropdownLinkBackgroundActive}" id="dropdownLinkBackgroundActive">
					</div>
				</div>

				<div class="control-group">
					<label for="dropdownLinkBackgroundHover" class="control-label">@dropdownLinkBackgroundHover</label>
					<div class="controls">
						<input type="text" name="dropdownLinkBackgroundHover" value="{dropdownLinkBackgroundHover}" id="dropdownLinkBackgroundHover">
					</div>
				</div>
			</div>
		</div>
	</fieldset>

	<fieldset>
		<legend>Z-index Master list</legend>
		<div class="row">

			<!-- Z-index master list -->
			<div class="span4">
				<div class="control-group">
					<label for="zindexDropdown" class="control-label">@zindexDropdown</label>
					<div class="controls">
						<input type="text" name="zindexDropdown" value="{zindexDropdown}" id="zindexDropdown">
					</div>
				</div>
				<div class="control-group">
					<label for="zindexPopover" class="control-label">@zindexPopover</label>
					<div class="controls">
						<input type="text" name="zindexPopover" value="{zindexPopover}" id="zindexPopover">
					</div>
				</div>
				<div class="control-group">
					<label for="zindexTooltip" class="control-label">@zindexTooltip</label>
					<div class="controls">
						<input type="text" name="zindexTooltip" value="{zindexTooltip}" id="zindexTooltip">
					</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label for="zindexFixedNavbar" class="control-label">@zindexFixedNavbar</label>
					<div class="controls">
						<input type="text" name="zindexFixedNavbar" value="{zindexFixedNavbar}" id="zindexFixedNavbar">
					</div>
				</div>
				<div class="control-group">
					<label for="zindexModalBackdrop" class="control-label">@zindexModalBackdrop</label>
					<div class="controls">
						<input type="text" name="zindexModalBackdrop" value="{zindexModalBackdrop}" id="zindexModalBackdrop">
					</div>
				</div>
				<div class="control-group">
					<label for="zindexModal" class="control-label">@zindexModal</label>
					<div class="controls">
						<input type="text" name="zindexModal" value="{zindexModal}" id="zindexModal">
					</div>
				</div>
			</div>
		</div>
	</fieldset>

	<fieldset>
		<legend>Pagination &amp; Hero unit</legend>
		<div class="row">

			<!-- Pagination -->
			<div class="span4">
				<div class="control-group">
					<label for="paginationBackground" class="control-label">@paginationBackground</label>
					<div class="controls">
						<input type="text" name="paginationBackground" value="{paginationBackground}" id="paginationBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="paginationBorder" class="control-label">@paginationBorder</label>
					<div class="controls">
						<input type="text" name="paginationBorder" value="{paginationBorder}" id="paginationBorder">
					</div>
				</div>
				<div class="control-group">
					<label for="paginationActiveBackground" class="control-label">@paginationActiveBackground</label>
					<div class="controls">
						<input type="text" name="paginationActiveBackground" value="{paginationActiveBackground}" id="paginationActiveBackground">
					</div>
				</div>
			</div>

			<!-- Hero unit -->
			<div class="span4">
				<div class="control-group">
					<label for="heroUnitBackground" class="control-label">@heroUnitBackground</label>
					<div class="controls">
						<input type="text" name="heroUnitBackground" value="{heroUnitBackground}" id="heroUnitBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="heroUnitHeadingColor" class="control-label">@heroUnitHeadingColor</label>
					<div class="controls">
						<input type="text" name="heroUnitHeadingColor" value="{heroUnitHeadingColor}" id="heroUnitHeadingColor">
					</div>
				</div>
				<div class="control-group">
					<label for="heroUnitLeadColor" class="control-label">@heroUnitLeadColor</label>
					<div class="controls">
						<input type="text" name="heroUnitLeadColor" value="{heroUnitLeadColor}" id="heroUnitLeadColor">
					</div>
				</div>
			</div>
		</div>
	</fieldset>

	<fieldset>
		<legend>Form states &amp; alerts</legend>
		<div class="row">

			<!-- Form states & alerts -->
			<div class="span3">
				<div class="control-group">
					<label for="warningText" class="control-label">@warningText</label>
					<div class="controls">
						<input type="text" name="warningText" value="{warningText}" id="warningText">
					</div>
				</div>
				<div class="control-group">
					<label for="warningBackground" class="control-label">@warningBackground</label>
					<div class="controls">
						<input type="text" name="warningBackground" value="{warningBackground}" id="warningBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="warningBorder" class="control-label">@warningBorder</label>
					<div class="controls">
						<input type="text" name="warningBorder" value="{warningBorder}" id="warningBorder">
					</div>
				</div>
			</div>
			<div class="span3">
				<div class="control-group">
					<label for="errorText" class="control-label">@errorText</label>
					<div class="controls">
						<input type="text" name="errorText" value="{errorText}" id="errorText">
					</div>
				</div>
				<div class="control-group">
					<label for="errorBackground" class="control-label">@errorBackground</label>
					<div class="controls">
						<input type="text" name="errorBackground" value="{errorBackground}" id="errorBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="errorBorder" class="control-label">@errorBorder</label>
					<div class="controls">
						<input type="text" name="errorBorder" value="{errorBorder}" id="errorBorder">
					</div>
				</div>
			</div>
			<div class="span3">
				<div class="control-group">
					<label for="successText" class="control-label">@successText</label>
					<div class="controls">
						<input type="text" name="successText" value="{successText}" id="successText">
					</div>
				</div>
				<div class="control-group">
					<label for="successBackground" class="control-label">@successBackground</label>
					<div class="controls">
						<input type="text" name="successBackground" value="{successBackground}" id="successBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="successBorder" class="control-label">@successBorder</label>
					<div class="controls">
						<input type="text" name="successBorder" value="{successBorder}" id="successBorder">
					</div>
				</div>
			</div>
			<div class="span3">
				<div class="control-group">
					<label for="infoText" class="control-label">@infoText</label>
					<div class="controls">
						<input type="text" name="infoText" value="{infoText}" id="infoText">
					</div>
				</div>
				<div class="control-group">
					<label for="infoBackground" class="control-label">@infoBackground</label>
					<div class="controls">
						<input type="text" name="infoBackground" value="{infoBackground}" id="infoBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="infoBorder" class="control-label">@infoBorder</label>
					<div class="controls">
						<input type="text" name="infoBorder" value="{infoBorder}" id="infoBorder">
					</div>
				</div>
			</div>
		</div>
	</fieldset>

	<fieldset>
		<legend>Tooltips and popovers</legend>
		<div class="row">

			<!-- Tooltips -->
			<div class="span4">
				<div class="control-group">
					<label for="tooltipColor" class="control-label">@tooltipColor</label>
					<div class="controls">
						<input type="text" name="tooltipColor" value="{tooltipColor}" id="tooltipColor">
					</div>
				</div>
				<div class="control-group">
					<label for="tooltipBackground" class="control-label">@tooltipBackground</label>
					<div class="controls">
						<input type="text" name="tooltipBackground" value="{tooltipBackground}" id="tooltipBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="tooltipArrowWidth" class="control-label">@tooltipArrowWidth</label>
					<div class="controls">
						<input type="text" name="tooltipArrowWidth" value="{tooltipArrowWidth}" id="tooltipArrowWidth">
					</div>
				</div>
				<div class="control-group">
					<label for="tooltipArrowColor" class="control-label">@tooltipArrowColor</label>
					<div class="controls">
						<input type="text" name="tooltipArrowColor" value="{tooltipArrowColor}" id="tooltipArrowColor">
					</div>
				</div>
			</div>

			<!-- Popovers -->
			<div class="span4">
				<div class="control-group">
					<label for="popoverBackground" class="control-label">@popoverBackground</label>
					<div class="controls">
						<input type="text" name="popoverBackground" value="{popoverBackground}" id="popoverBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="popoverArrowWidth" class="control-label">@popoverArrowWidth</label>
					<div class="controls">
						<input type="text" name="popoverArrowWidth" value="{popoverArrowWidth}" id="popoverArrowWidth">
					</div>
				</div>
				<div class="control-group">
					<label for="popoverArrowColor" class="control-label">@popoverArrowColor</label>
					<div class="controls">
						<input type="text" name="popoverArrowColor" value="{popoverArrowColor}" id="popoverArrowColor">
					</div>
				</div>
				<div class="control-group">
					<label for="popoverTitleBackground" class="control-label">@popoverTitleBackground</label>
					<div class="controls">
						<input type="text" name="popoverTitleBackground" value="{popoverTitleBackground}" id="popoverTitleBackground">
					</div>
				</div>
			</div>
			<div class="span4">
				
				<div class="control-group">
					<label for="popoverArrowOuterWidth" class="control-label">@popoverArrowOuterWidth</label>
					<div class="controls">
						<input type="text" name="popoverArrowOuterWidth" value="{popoverArrowOuterWidth}" id="popoverArrowOuterWidth">
					</div>
				</div>

				<div class="control-group">
					<label for="popoverArrowOuterColor" class="control-label">@popoverArrowOuterColor</label>
					<div class="controls">
						<input type="text" name="popoverArrowOuterColor" value="{popoverArrowOuterColor}" id="popoverArrowOuterColor">
					</div>
				</div>
			</div>
		</div>
	</fieldset>

	<fieldset>
		<legend>Grid : Default 940px grid, 1200px min &amp; 768-979px</legend>
		<div class="row">

			<!-- Grid -->
			<div class="span4">
				<div class="control-group">
					<label for="gridColumns" class="control-label">@gridColumns</label>
					<div class="controls">
						<input type="text" name="gridColumns" value="{gridColumns}" id="gridColumns">
					</div>
				</div>

				<div class="control-group">
					<label for="gridColumnWidth" class="control-label">@gridColumnWidth</label>
					<div class="controls">
						<input type="text" name="gridColumnWidth" value="{gridColumnWidth}" id="gridColumnWidth">
					</div>
				</div>
				<div class="control-group">
					<label for="gridGutterWidth" class="control-label">@gridGutterWidth</label>
					<div class="controls">
						<input type="text" name="gridGutterWidth" value="{gridGutterWidth}" id="gridGutterWidth">
					</div>
				</div>

				<div class="control-group">
					<label for="gridRowWidth" class="control-label">@gridRowWidth</label>
					<div class="controls">
						<input type="text" name="gridRowWidth" value="{gridRowWidth}" id="gridRowWidth">
					</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label for="gridColumnWidth1200" class="control-label">@gridColumnWidth1200</label>
					<div class="controls">
						<input type="text" name="gridColumnWidth1200" value="{gridColumnWidth1200}" id="gridColumnWidth1200">
					</div>
				</div>
				<div class="control-group">
					<label for="gridGutterWidth1200" class="control-label">@gridGutterWidth1200</label>
					<div class="controls">
						<input type="text" name="gridGutterWidth1200" value="{gridGutterWidth1200}" id="gridGutterWidth1200">
					</div>
				</div>

				<div class="control-group">
					<label for="gridRowWidth1200" class="control-label">@gridRowWidth1200</label>
					<div class="controls">
						<input type="text" name="gridRowWidth1200" value="{gridRowWidth1200}" id="gridRowWidth1200">
					</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label for="gridColumnWidth768" class="control-label">@gridColumnWidth768</label>
					<div class="controls">
						<input type="text" name="gridColumnWidth768" value="{gridColumnWidth768}" id="gridColumnWidth768">
					</div>
				</div>
				<div class="control-group">
					<label for="gridGutterWidth768" class="control-label">@gridGutterWidth768</label>
					<div class="controls">
						<input type="text" name="gridGutterWidth768" value="{gridGutterWidth768}" id="gridGutterWidth768">
					</div>
				</div>

				<div class="control-group">
					<label for="gridRowWidth768" class="control-label">@gridRowWidth768</label>
					<div class="controls">
						<input type="text" name="gridRowWidth768" value="{gridRowWidth768}" id="gridRowWidth768">
					</div>
				</div>
			</div>
		</div>
	</fieldset>

	<fieldset>
		<legend>Fluid grid</legend>
		<div class="row">

			<!-- Fluid Grid -->
			<div class="span4">
				<div class="control-group">
					<label for="fluidGridColumnWidth" class="control-label">@fluidGridColumnWidth</label>
					<div class="controls">
						<input type="text" name="fluidGridColumnWidth" value="{fluidGridColumnWidth}" id="fluidGridColumnWidth">
					</div>
				</div>
				<div class="control-group">
					<label for="fluidGridGutterWidth" class="control-label">@fluidGridGutterWidth</label>
					<div class="controls">
						<input type="text" name="fluidGridGutterWidth" value="{fluidGridGutterWidth}" id="fluidGridGutterWidth">
					</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label for="fluidGridColumnWidth1200" class="control-label">@fluidGridColumnWidth1200</label>
					<div class="controls">
						<input type="text" name="fluidGridColumnWidth1200" value="{fluidGridColumnWidth1200}" id="fluidGridColumnWidth1200">
					</div>
				</div>
				<div class="control-group">
					<label for="fluidGridGutterWidth1200" class="control-label">@fluidGridGutterWidth1200</label>
					<div class="controls">
						<input type="text" name="fluidGridGutterWidth1200" value="{fluidGridGutterWidth1200}" id="fluidGridGutterWidth1200">
					</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label for="fluidGridColumnWidth768" class="control-label">@fluidGridColumnWidth768</label>
					<div class="controls">
						<input type="text" name="fluidGridColumnWidth768" value="{fluidGridColumnWidth768}" id="fluidGridColumnWidth768">
					</div>
				</div>
				<div class="control-group">
					<label for="fluidGridGutterWidth768" class="control-label">@fluidGridGutterWidth768</label>
					<div class="controls">
						<input type="text" name="fluidGridGutterWidth768" value="{fluidGridGutterWidth768}" id="fluidGridGutterWidth768">
					</div>
				</div>
			</div>
		</div>
	</fieldset>

	<fieldset>
		<legend>Extra</legend>
		<div class="row">

			<!-- Icons -->
			<div class="span4">
				<div class="control-group">
					<label for="iconSpritePath" class="control-label">@iconSpritePath</label>
					<div class="controls">
						<input type="text" name="iconSpritePath" value="{iconSpritePath}" id="iconSpritePath">
					</div>
				</div>
				<div class="control-group">
					<label for="iconWhiteSpritePath" class="control-label">@iconWhiteSpritePath</label>
					<div class="controls">
						<input type="text" name="iconWhiteSpritePath" value="{iconWhiteSpritePath}" id="iconWhiteSpritePath">
					</div>
				</div>

				<!-- Extra -->
				<div class="control-group">
					<label for="idText" class="control-label">@idText</label>
					<div class="controls">
						<input type="text" name="idText" value="{idText}" id="idText">
					</div>
				</div>
				<div class="control-group">
					<label for="placeholderText" class="control-label">@placeholderText</label>
					<div class="controls">
						<input type="text" name="placeholderText" value="{placeholderText}" id="placeholderText">
					</div>
				</div>
			</div>

			<!-- Hr -->
			<div class="span4">
				<div class="control-group">
					<label for="hrBorder" class="control-label">@hrBorder</label>
					<div class="controls">
						<input type="text" name="hrBorder" value="{hrBorder}" id="hrBorder">
					</div>
				</div>
				<div class="control-group">
					<label for="horizontalComponentOffset" class="control-label">@horizontalComponentOffset</label>
					<div class="controls">
						<input type="text" name="horizontalComponentOffset" value="{horizontalComponentOffset}" id="horizontalComponentOffset">
					</div>
				</div>
				<!-- well -->
				<div class="control-group">
					<label for="wellBackground" class="control-label">@wellBackground</label>
					<div class="controls">
						<input type="text" name="wellBackground" value="{wellBackground}" id="wellBackground">
					</div>
				</div>
			</div>
		</div>
	</fieldset>

	<fieldset>
		<Legend>Update Theme!</Legend>
		<div class="control-group">
			<div class="controls">
				<input type="submit" name="submit" value="Update Theme" class="btn btn-primary btn-large">
			</div>
		</div>
	</fieldset>
</form>
