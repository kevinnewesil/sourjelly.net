<h2>Create a theme</h2>
<hr>
<form action="{base}/themes/create/?ns=controllers&amp;path=controller_path" class="form themeForm" method="post">
	<fieldset>
		<legend>Name your theme</legend>
		<div class="control-group">
			<label for="themeName" class="control-label">Theme name</label>
			<div class="controls">
				<input type="text" name="themeName" id="themeName" value="" placeholder="Theme name">
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
						<input type="text" name="black" id="black" value="#000000">
					</div>
				</div>
				<div class="control-group">
					<label for="gray" class="control-label">@gray</label>
					<div class="controls">
						<input type="text" name="gray" value='#010101' id="gray">
					</div>
				</div>
				<div class="control-group">
					<label for="white" class="control-label">@white</label>
					<div class="controls">
						<input type="text" name="white" value='#FCF9F9' id="white">
					</div>
				</div>
				<div class="control-group">
					<label for="grayDark" class="control-label">@grayDark</label>
					<div class="controls">
						<input type="text" name="grayDark" value='#2655C4' id="grayDark">
					</div>
				</div>
				<div class="control-group">
					<label for="grayDarker" class="control-label">@grayDarker</label>
					<div class="controls">
						<input type="text" name="grayDarker" value='darken(#2655C4, 10%)' id="grayDarker">
					</div>
				</div>
				<div class="control-group">
					<label for="grayLight" class="control-label">@grayLight</label>
					<div class="controls">
						<input type="text" name="grayLight" value='#ABC2FF' id="grayLight">
					</div>
				</div>
				<div class="control-group">
					<label for="grayLighter" class="control-label">@grayLighter</label>
					<div class="controls">
						<input type="text" name="grayLighter" value='lighten(#010101, 10%)' id="grayLighter">
					</div>
				</div>
			</div>
			<!-- Accent colors -->
			<div class="span4">
				<div class="control-group">
					<label for="blue" class="control-label">@blue</label>
					<div class="controls">
						<input type="text" name="blue" value='#049cdb' id="blue">
					</div>
				</div>
				<div class="control-group">
					<label for="blueDark" class="control-label">@blueDark</label>
					<div class="controls">
						<input type="text" name="blueDark" value='#0064cd' id="blueDark">
					</div>
				</div>
				<div class="control-group">
					<label for="green" class="control-label">@green</label>
					<div class="controls">
						<input type="text" name="green" value='#46a546' id="green">
					</div>
				</div>
				<div class="control-group">
					<label for="red" class="control-label">@red</label>
					<div class="controls">
						<input type="text" name="red" value='#9d261d' id="red">
					</div>
				</div>
				<div class="control-group">
					<label for="yellow" class="control-label">@yellow</label>
					<div class="controls">
						<input type="text" name="yellow" value='#ffc40d' id="yellow">
					</div>
				</div>
				<div class="control-group">
					<label for="orange" class="control-label">@orange</label>
					<div class="controls">
						<input type="text" name="orange" value='#f89406' id="orange">
					</div>
				</div>
				<div class="control-group">
					<label for="pink" class="control-label">@pink</label>
					<div class="controls">
						<input type="text" name="pink" value='#c3325f' id="pink">
					</div>
				</div>
				<div class="control-group">
					<label for="purple" class="control-label">@purple</label>
					<div class="controls">
						<input type="text" name="purple" value='#7a43b6' id="purple">
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
				<input type="text" name="bodyBackground" value='@white' id="bodyBackground">
			</div>
		</div><div class="control-group">
			<label for="textColor" class="control-label">@textColor</label>
			<div class="controls">
				<input type="text" name="textColor" value='@grayDark' id="textColor">
			</div>

		<!-- Links -->
		</div><div class="control-group">
			<label for="linkColor" class="control-label">@linkColor</label>
			<div class="controls">
				<input type="text" name="linkColor" value='#ABC2FF' id="linkColor">
			</div>
		</div><div class="control-group">
			<label for="linkColorHover" class="control-label">@linkColorHover</label>
			<div class="controls">
				<input type="text" name="linkColorHover" value='darken(@linkColor, 15%)' id="linkColorHover">
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
						<input type="text" name="sansFontFamily" value='"Helvetica Neue", Helvetica, Arial, sans-serif' id="sansFontFamily">
					</div>
				</div>

				<div class="control-group">
					<label for="serifFontFamily" class="control-label">@serifFontFamily</label>
					<div class="controls">
						<input type="text" name="serifFontFamily" value='Georgia, "Times New Roman", Times, serif' id="serifFontFamily">
					</div>
				</div>

				<div class="control-group">
					<label for="monoFontFamily" class="control-label">@monoFontFamily</label>
					<div class="controls">
						<input type="text" name="monoFontFamily" value='Monaco, Menlo, Consolas, "Courier New", monospace' id="monoFontFamily">
					</div>
				</div>
			</div>

			<div class="fontsizes span4">
				<div class="control-group">
					<label for="fontSizeMini" class="control-label">@fontSizeMini</label>
					<div class="controls">
						<input type="text" name="fontSizeMini" value="8px" id="fontSizeMini">
					</div>
				</div>

				<div class="control-group">
					<label for="fontSizeSmall" class="control-label">@fontSizeSmall</label>
					<div class="controls">
						<input type="text" name="fontSizeSmall" value="10px" id="fontSizeSmall">
					</div>
				</div>

				<div class="control-group">
					<label for="baseFontSize" class="control-label">@baseFontSize</label>
					<div class="controls">
						<input type="text" name="baseFontSize" value="14px" id="baseFontSize">
					</div>
				</div>

				<div class="control-group">
					<label for="fontSizeLarge" class="control-label">@fontSizeLarge</label>
					<div class="controls">
						<input type="text" name="fontSizeLarge" value="16px" id="fontSizeLarge">
					</div>
				</div>

				<div class="control-group">
					<label for="baseFontFamily" class="control-label">@baseFontFamily</label>
					<div class="controls">
						<input type="text" name="baseFontFamily" value="@sansFontFamily" id="baseFontFamily">
					</div>
				</div>

				<div class="control-group">
					<label for="baseLineHeight" class="control-label">@baseLineHeight</label>
					<div class="controls">
						<input type="text" name="baseLineHeight" value="20px" id="baseLineHeight">
					</div>
				</div>

				<div class="control-group">
					<label for="altFontFamily" class="control-label">@altFontFamily</label>
					<div class="controls">
						<input type="text" name="altFontFamily" value="@serifFontFamily" id="altFontFamily">
					</div>
				</div>

				<div class="control-group">
					<label for="borderRadiusSmall" class="control-label">@borderRadiusSmall</label>
					<div class="controls">
						<input type="text" name="borderRadiusSmall" value="4px" id="borderRadiusSmall">
					</div>
				</div>

				<div class="control-group">
					<label for="baseBorderRadius" class="control-label">@baseBorderRadius</label>
					<div class="controls">
						<input type="text" name="baseBorderRadius" value="4px" id="baseBorderRadius">
					</div>
				</div>

				<div class="control-group">
					<label for="borderRadiusLarge" class="control-label">@borderRadiusLarge</label>
					<div class="controls">
						<input type="text" name="borderRadiusLarge" value="6px" id="borderRadiusLarge">
					</div>
				</div>

				<div class="control-group">
					<label for="paddingMini" class="control-label">@paddingMini</label>
					<div class="controls">
						<input type="text" name="paddingMini" value="4px" id="paddingMini">
					</div>
				</div>
				

				<div class="control-group">
					<label for="paddingSmall" class="control-label">@paddingSmall</label>
					<div class="controls">
						<input type="text" name="paddingSmall" value="6px" id="paddingSmall">
					</div>
				</div>
				
				<div class="control-group">
					<label for="paddingLarge" class="control-label">@paddingLarge</label>
					<div class="controls">
						<input type="text" name="paddingLarge" value="8px" id="paddingLarge">
					</div>
				</div>
			</div>

			<div class="span4">
				<div class="control-group">
					<label for="headingsFontFamily" class="control-label">@headingsFontFamily</label>
					<div class="controls">
						<input type="text" name="headingsFontFamily" value="inherit" id="headingsFontFamily">
					</div>
				</div>

				<div class="control-group">
					<label for="headingsFontWeight" class="control-label">@headingsFontWeight</label>
					<div class="controls">
						<input type="text" name="headingsFontWeight" value="bold" id="headingsFontWeight">
					</div>
				</div>

				<div class="control-group">
					<label for="headingsColor" class="control-label">@headingsColor</label>
					<div class="controls">
						<input type="text" name="headingsColor" value="inherit" id="headingsColor">
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
						<input type="text" name="btnBackground" value="@white" id="btnBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="btnBackgroundHighlight" class="control-label">@btnBackgroundHighlight</label>
					<div class="controls">
						<input type="text" name="btnBackgroundHighlight" value="darken(@white, 10%)" id="btnBackgroundHighlight">
					</div>
				</div>
				<div class="control-group">
					<label for="btnBorder" class="control-label">@btnBorder</label>
					<div class="controls">
						<input type="text" name="btnBorder" value="#CCCCCC" id="btnBorder">
					</div>
				</div>
				<div class="control-group">
					<label for="btnPrimaryBackground" class="control-label">@btnPrimaryBackground</label>
					<div class="controls">
						<input type="text" name="btnPrimaryBackground" value="@linkColor" id="btnPrimaryBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="btnPrimaryBackgroundHighlight" class="control-label">@btnPrimaryBackgroundHighlight</label>
					<div class="controls">
						<input type="text" name="btnPrimaryBackgroundHighlight" value="spin(@btnPrimaryBackground, 20%)" id="btnPrimaryBackgroundHighlight">
					</div>
				</div>
			</div>

			<div class="span4">
				<div class="control-group">
					<label for="btnInfoBackground" class="control-label">@btnInfoBackground</label>
					<div class="controls">
						<input type="text" name="btnInfoBackground" value="#5bc0de" id="btnInfoBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="btnInfoBackgroundHighlight" class="control-label">@btnInfoBackgroundHighlight</label>
					<div class="controls">
						<input type="text" name="btnInfoBackgroundHighlight" value="#2f96b4" id="btnInfoBackgroundHighlight">
					</div>
				</div>
				<div class="control-group">
					<label for="btnSuccessBackground" class="control-label">@btnSuccessBackground</label>
					<div class="controls">
						<input type="text" name="btnSuccessBackground" value="#62c462" id="btnSuccessBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="btnSuccessBackgroundHighlight" class="control-label">@btnSuccessBackgroundHighlight</label>
					<div class="controls">
						<input type="text" name="btnSuccessBackgroundHighlight" value="#51a351" id="btnSuccessBackgroundHighlight">
					</div>
				</div>
				<div class="control-group">
					<label for="btnWarningBackground" class="control-label">@btnWarningBackground</label>
					<div class="controls">
						<input type="text" name="btnWarningBackground" value="lighten(@orange, 15%)" id="btnWarningBackground">
					</div>
				</div>
			</div>

			<div class="span4">
				<div class="control-group">
					<label for="btnWarningBackgroundHighlight" class="control-label">@btnWarningBackgroundHighlight</label>
					<div class="controls">
						<input type="text" name="btnWarningBackgroundHighlight" value="@orange" id="btnWarningBackgroundHighlight">
					</div>
				</div>
				<div class="control-group">
					<label for="btnDangerBackground" class="control-label">@btnDangerBackground</label>
					<div class="controls">
						<input type="text" name="btnDangerBackground" value="#ee5f5b" id="btnDangerBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="btnDangerBackgroundHighlight" class="control-label">@btnDangerBackgroundHighlight</label>
					<div class="controls">
						<input type="text" name="btnDangerBackgroundHighlight" value="#bd362f" id="btnDangerBackgroundHighlight">
					</div>
				</div>
				<div class="control-group">
					<label for="btnInverseBackground" class="control-label">@btnInverseBackground</label>
					<div class="controls">
						<input type="text" name="btnInverseBackground" value="#444444" id="btnInverseBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="btnInverseBackgroundHighlight" class="control-label">@btnInverseBackgroundHighlight</label>
					<div class="controls">
						<input type="text" name="btnInverseBackgroundHighlight" value="@grayDarker" id="btnInverseBackgroundHighlight">
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
						<input type="text" name="tableBackground" value="transparent" id="tableBackground">
					</div>
				</div>

				<div class="control-group">
					<label for="tableBackgroundAccent" class="control-label">@tableBackgroundAccent</label>
					<div class="controls">
						<input type="text" name="tableBackgroundAccent" value="#F9F9F9" id="tableBackgroundAccent">
					</div>
				</div>

				<div class="control-group">
					<label for="tableBackgroundHover" class="control-label">@tableBackgroundHover</label>
					<div class="controls">
						<input type="text" name="tableBackgroundHover" value="#F5F5F5" id="tableBackgroundHover">
					</div>
				</div>

				<div class="control-group">
					<label for="tableBorder" class="control-label">@tableBorder</label>
					<div class="controls">
						<input type="text" name="tableBorder" value="@grayLighter" id="tableBorder">
					</div>
				</div>
			</div>

			<!-- Forms -->
			<div class="span4">
				<div class="control-group">
					<label for="inputBackground" class="control-label">@inputBackground</label>
					<div class="controls">
						<input type="text" name="inputBackground" value="#FFF" id="inputBackground">
					</div>
				</div>

				<div class="control-group">
					<label for="inputHeight" class="control-label">@inputHeight</label>
					<div class="controls">
						<input type="text" name="inputHeight" value="25px" id="inputHeight">
					</div>
				</div>

				<div class="control-group">
					<label for="inputBorder" class="control-label">@inputBorder</label>
					<div class="controls">
						<input type="text" name="inputBorder" value="#CCC" id="inputBorder">
					</div>
				</div>

				<div class="control-group">
					<label for="inputBorderRadius" class="control-label">@inputBorderRadius</label>
					<div class="controls">
						<input type="text" name="inputBorderRadius" value="4px" id="inputBorderRadius">
					</div>
				</div>

				<div class="control-group">
					<label for="inputDisabledBackground" class="control-label">@inputDisabledBackground</label>
					<div class="controls">
						<input type="text" name="inputDisabledBackground" value="@grayLighter" id="inputDisabledBackground">
					</div>
				</div>

				<div class="control-group">
					<label for="formActionsBackground" class="control-label">@formActionsBackground</label>
					<div class="controls">
						<input type="text" name="formActionsBackground" value="#F5F5F5" id="formActionsBackground">
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
						<input type="text" name="navbarCollapseWidth" value="979px" id="navbarCollapseWidth">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarHeight" class="control-label">@navbarHeight</label>
					<div class="controls">
						<input type="text" name="navbarHeight" value="40px" id="navbarHeight">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarBackgroundHighlight" class="control-label">@navbarBackgroundHighlight</label>
					<div class="controls">
						<input type="text" name="navbarBackgroundHighlight" value="@grayDark" id="navbarBackgroundHighlight">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarBackground" class="control-label">@navbarBackground</label>
					<div class="controls">
						<input type="text" name="navbarBackground" value="darken(@navbarBackgroundHighlight, 5%)" id="navbarBackground">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarBorder" class="control-label">@navbarBorder</label>
					<div class="controls">
						<input type="text" name="navbarBorder" value="darken(@navbarBackground, 12%);" id="navbarBorder">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarText" class="control-label">@navbarText</label>
					<div class="controls">
						<input type="text" name="navbarText" value="@gray" id="navbarText">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarLinkColor" class="control-label">@navbarLinkColor</label>
					<div class="controls">
						<input type="text" name="navbarLinkColor" value="@gray" id="navbarLinkColor">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarLinkColorHover" class="control-label">@navbarLinkColorHover</label>
					<div class="controls">
						<input type="text" name="navbarLinkColorHover" value="@grayLight" id="navbarLinkColorHover">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarLinkColorActive" class="control-label">@navbarLinkColorActive</label>
					<div class="controls">
						<input type="text" name="navbarLinkColorActive" value="@grayLight" id="navbarLinkColorActive">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarLinkBackgroundHover" class="control-label">@navbarLinkBackgroundHover</label>
					<div class="controls">
						<input type="text" name="navbarLinkBackgroundHover" value="transparent" id="navbarLinkBackgroundHover">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarLinkBackgroundActive" class="control-label">@navbarLinkBackgroundActive</label>
					<div class="controls">
						<input type="text" name="navbarLinkBackgroundActive" value="darken(@navbarBackground, 5%)" id="navbarLinkBackgroundActive">
					</div>
				</div>


				<div class="control-group">
					<label for="navbarCollapseDesktopWidth" class="control-label">@navbarCollapseDesktopWidth</label>
					<div class="controls">
						<input type="text" name="navbarCollapseDesktopWidth" value="980px" id="navbarCollapseDesktopWidth">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarBrandColor" class="control-label">@navbarBrandColor</label>
					<div class="controls">
						<input type="text" name="navbarBrandColor" value="@navbarLinkColor" id="navbarBrandColor">
					</div>
				</div>


			</div>
			<!-- Inverted navbar -->
			<div class="span4">
				<div class="control-group">
					<label for="navbarInverseBackground" class="control-label">@navbarInverseBackground</label>
					<div class="controls">
						<input type="text" name="navbarInverseBackground" value="#111111" id="navbarInverseBackground">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseBackgroundHighlight" class="control-label">@navbarInverseBackgroundHighlight</label>
					<div class="controls">
						<input type="text" name="navbarInverseBackgroundHighlight" value="#222222" id="navbarInverseBackgroundHighlight">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseBorder" class="control-label">@navbarInverseBorder</label>
					<div class="controls">
						<input type="text" name="navbarInverseBorder" value="#252525" id="navbarInverseBorder">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseText" class="control-label">@navbarInverseText</label>
					<div class="controls">
						<input type="text" name="navbarInverseText" value="@grayLight" id="navbarInverseText">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseLinkColor" class="control-label">@navbarInverseLinkColor</label>
					<div class="controls">
						<input type="text" name="navbarInverseLinkColor" value="@grayLight" id="navbarInverseLinkColor">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseLinkColorHover" class="control-label">@navbarInverseLinkColorHover</label>
					<div class="controls">
						<input type="text" name="navbarInverseLinkColorHover" value="@white" id="navbarInverseLinkColorHover">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseLinkColorActive" class="control-label">@navbarInverseLinkColorActive</label>
					<div class="controls">
						<input type="text" name="navbarInverseLinkColorActive" value="@navbarInverseLinkColorHover" id="navbarInverseLinkColorActive">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseLinkBackgroundHover" class="control-label">@navbarInverseLinkBackgroundHover</label>
					<div class="controls">
						<input type="text" name="navbarInverseLinkBackgroundHover" value="transparent" id="navbarInverseLinkBackgroundHover">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseLinkBackgroundActive" class="control-label">@navbarInverseLinkBackgroundActive</label>
					<div class="controls">
						<input type="text" name="navbarInverseLinkBackgroundActive" value="@navbarInverseBackground" id="navbarInverseLinkBackgroundActive">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseSearchBackground" class="control-label">@navbarInverseSearchBackground</label>
					<div class="controls">
						<input type="text" name="navbarInverseSearchBackground" value="lighten(@navbarInverseBackground, 25%)" id="navbarInverseSearchBackground">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseSearchBackgroundFocus" class="control-label">@navbarInverseSearchBackgroundFocus</label>
					<div class="controls">
						<input type="text" name="navbarInverseSearchBackgroundFocus" value="@white" id="navbarInverseSearchBackgroundFocus">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseSearchBorder" class="control-label">@navbarInverseSearchBorder</label>
					<div class="controls">
						<input type="text" name="navbarInverseSearchBorder" value="@navbarInverseBackground" id="navbarInverseSearchBorder">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseSearchidColor" class="control-label">@navbarInverseSearchidColor</label>
					<div class="controls">
						<input type="text" name="navbarInverseSearchidColor" value="#CCCCCC" id="navbarInverseSearchidColor">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseBrandColor" class="control-label">@navbarInverseBrandColor</label>
					<div class="controls">
						<input type="text" name="navbarInverseBrandColor" value="@navbarInverseLinkColor" id="navbarInverseBrandColor">
					</div>
				</div>

				<div class="control-group">
					<label for="navbarInverseSearchPlaceholderColor" class="control-label">@navbarInverseSearchPlaceholderColor</label>
					<div class="controls">
						<input type="text" name="navbarInverseSearchPlaceholderColor" value="@grayLight" id="navbarInverseSearchPlaceholderColor">
					</div>
				</div>
			</div>

			<!-- Dropdowns -->
			<div class="span4">
				<div class="control-group">
					<label for="dropdownBackground" class="control-label">@dropdownBackground</label>
					<div class="controls">
						<input type="text" name="dropdownBackground" value="@white" id="dropdownBackground">
					</div>
				</div>

				<div class="control-group">
					<label for="dropdownBorder" class="control-label">@dropdownBorder</label>
					<div class="controls">
						<input type="text" name="dropdownBorder" value="rgba(0,0,0,0.2)" id="dropdownBorder">
					</div>
				</div>

				<div class="control-group">
					<label for="dropdownDividerTop" class="control-label">@dropdownDividerTop</label>
					<div class="controls">
						<input type="text" name="dropdownDividerTop" value="#E5E5E5" id="dropdownDividerTop">
					</div>
				</div>

				<div class="control-group">
					<label for="dropdownDividerBottom" class="control-label">@dropdownDividerBottom</label>
					<div class="controls">
						<input type="text" name="dropdownDividerBottom" value="@white" id="dropdownDividerBottom">
					</div>
				</div>

				<div class="control-group">
					<label for="dropdownLinkColor" class="control-label">@dropdownLinkColor</label>
					<div class="controls">
						<input type="text" name="dropdownLinkColor" value="@grayDark" id="dropdownLinkColor">
					</div>
				</div>

				<div class="control-group">
					<label for="dropdownLinkColorHover" class="control-label">@dropdownLinkColorHover</label>
					<div class="controls">
						<input type="text" name="dropdownLinkColorHover" value="@white" id="dropdownLinkColorHover">
					</div>
				</div>

				<div class="control-group">
					<label for="dropdownLinkColorActive" class="control-label">@dropdownLinkColorActive</label>
					<div class="controls">
						<input type="text" name="dropdownLinkColorActive" value="@dropdownLinkColor" id="dropdownLinkColorActive">
					</div>
				</div>

				<div class="control-group">
					<label for="dropdownLinkBackgroundActive" class="control-label">@dropdownLinkBackgroundActive</label>
					<div class="controls">
						<input type="text" name="dropdownLinkBackgroundActive" value="@linkColor" id="dropdownLinkBackgroundActive">
					</div>
				</div>

				<div class="control-group">
					<label for="dropdownLinkBackgroundHover" class="control-label">@dropdownLinkBackgroundHover</label>
					<div class="controls">
						<input type="text" name="dropdownLinkBackgroundHover" value="@dropdownLinkBackgroundActive" id="dropdownLinkBackgroundHover">
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
						<input type="text" name="zindexDropdown" value="1000" id="zindexDropdown">
					</div>
				</div>
				<div class="control-group">
					<label for="zindexPopover" class="control-label">@zindexPopover</label>
					<div class="controls">
						<input type="text" name="zindexPopover" value="1010" id="zindexPopover">
					</div>
				</div>
				<div class="control-group">
					<label for="zindexTooltip" class="control-label">@zindexTooltip</label>
					<div class="controls">
						<input type="text" name="zindexTooltip" value="1020" id="zindexTooltip">
					</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label for="zindexFixedNavbar" class="control-label">@zindexFixedNavbar</label>
					<div class="controls">
						<input type="text" name="zindexFixedNavbar" value="1030" id="zindexFixedNavbar">
					</div>
				</div>
				<div class="control-group">
					<label for="zindexModalBackdrop" class="control-label">@zindexModalBackdrop</label>
					<div class="controls">
						<input type="text" name="zindexModalBackdrop" value="1040" id="zindexModalBackdrop">
					</div>
				</div>
				<div class="control-group">
					<label for="zindexModal" class="control-label">@zindexModal</label>
					<div class="controls">
						<input type="text" name="zindexModal" value="1050" id="zindexModal">
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
						<input type="text" name="paginationBackground" value="#FFF" id="paginationBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="paginationBorder" class="control-label">@paginationBorder</label>
					<div class="controls">
						<input type="text" name="paginationBorder" value="#DDD" id="paginationBorder">
					</div>
				</div>
				<div class="control-group">
					<label for="paginationActiveBackground" class="control-label">@paginationActiveBackground</label>
					<div class="controls">
						<input type="text" name="paginationActiveBackground" value="#F5F5F5" id="paginationActiveBackground">
					</div>
				</div>
			</div>

			<!-- Hero unit -->
			<div class="span4">
				<div class="control-group">
					<label for="heroUnitBackground" class="control-label">@heroUnitBackground</label>
					<div class="controls">
						<input type="text" name="heroUnitBackground" value="@grayLighter" id="heroUnitBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="heroUnitHeadingColor" class="control-label">@heroUnitHeadingColor</label>
					<div class="controls">
						<input type="text" name="heroUnitHeadingColor" value="inherit" id="heroUnitHeadingColor">
					</div>
				</div>
				<div class="control-group">
					<label for="heroUnitLeadColor" class="control-label">@heroUnitLeadColor</label>
					<div class="controls">
						<input type="text" name="heroUnitLeadColor" value="inherit" id="heroUnitLeadColor">
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
						<input type="text" name="warningText" value="#c09853" id="warningText">
					</div>
				</div>
				<div class="control-group">
					<label for="warningBackground" class="control-label">@warningBackground</label>
					<div class="controls">
						<input type="text" name="warningBackground" value="#fcf8e3" id="warningBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="warningBorder" class="control-label">@warningBorder</label>
					<div class="controls">
						<input type="text" name="warningBorder" value="darken(spin(@warningBackground, -10), 3%)" id="warningBorder">
					</div>
				</div>
			</div>
			<div class="span3">
				<div class="control-group">
					<label for="errorText" class="control-label">@errorText</label>
					<div class="controls">
						<input type="text" name="errorText" value="#b94a48" id="errorText">
					</div>
				</div>
				<div class="control-group">
					<label for="errorBackground" class="control-label">@errorBackground</label>
					<div class="controls">
						<input type="text" name="errorBackground" value="#f2dede" id="errorBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="errorBorder" class="control-label">@errorBorder</label>
					<div class="controls">
						<input type="text" name="errorBorder" value="darken(spin(@errorBackground, -10), 3%)" id="errorBorder">
					</div>
				</div>
			</div>
			<div class="span3">
				<div class="control-group">
					<label for="successText" class="control-label">@successText</label>
					<div class="controls">
						<input type="text" name="successText" value="#468847" id="successText">
					</div>
				</div>
				<div class="control-group">
					<label for="successBackground" class="control-label">@successBackground</label>
					<div class="controls">
						<input type="text" name="successBackground" value="#dff0d8" id="successBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="successBorder" class="control-label">@successBorder</label>
					<div class="controls">
						<input type="text" name="successBorder" value="darken(spin(@successBackground, -10), 5%)" id="successBorder">
					</div>
				</div>
			</div>
			<div class="span3">
				<div class="control-group">
					<label for="infoText" class="control-label">@infoText</label>
					<div class="controls">
						<input type="text" name="infoText" value="#3a87ad" id="infoText">
					</div>
				</div>
				<div class="control-group">
					<label for="infoBackground" class="control-label">@infoBackground</label>
					<div class="controls">
						<input type="text" name="infoBackground" value="#d9edf7" id="infoBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="infoBorder" class="control-label">@infoBorder</label>
					<div class="controls">
						<input type="text" name="infoBorder" value="darken(spin(@infoBackground, -10), 7%)" id="infoBorder">
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
						<input type="text" name="tooltipColor" value="#FFF" id="tooltipColor">
					</div>
				</div>
				<div class="control-group">
					<label for="tooltipBackground" class="control-label">@tooltipBackground</label>
					<div class="controls">
						<input type="text" name="tooltipBackground" value="#000" id="tooltipBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="tooltipArrowWidth" class="control-label">@tooltipArrowWidth</label>
					<div class="controls">
						<input type="text" name="tooltipArrowWidth" value="5px" id="tooltipArrowWidth">
					</div>
				</div>
				<div class="control-group">
					<label for="tooltipArrowColor" class="control-label">@tooltipArrowColor</label>
					<div class="controls">
						<input type="text" name="tooltipArrowColor" value="@tooltipBackground" id="tooltipArrowColor">
					</div>
				</div>
			</div>

			<!-- Popovers -->
			<div class="span4">
				<div class="control-group">
					<label for="popoverBackground" class="control-label">@popoverBackground</label>
					<div class="controls">
						<input type="text" name="popoverBackground" value="#FFF" id="popoverBackground">
					</div>
				</div>
				<div class="control-group">
					<label for="popoverArrowWidth" class="control-label">@popoverArrowWidth</label>
					<div class="controls">
						<input type="text" name="popoverArrowWidth" value="10px" id="popoverArrowWidth">
					</div>
				</div>
				<div class="control-group">
					<label for="popoverArrowColor" class="control-label">@popoverArrowColor</label>
					<div class="controls">
						<input type="text" name="popoverArrowColor" value="#FFF" id="popoverArrowColor">
					</div>
				</div>
				<div class="control-group">
					<label for="popoverTitleBackground" class="control-label">@popoverTitleBackground</label>
					<div class="controls">
						<input type="text" name="popoverTitleBackground" value="darken(@popoverBackground, 3%)" id="popoverTitleBackground">
					</div>
				</div>
			</div>
			<div class="span4">
				
				<div class="control-group">
					<label for="popoverArrowOuterWidth" class="control-label">@popoverArrowOuterWidth</label>
					<div class="controls">
						<input type="text" name="popoverArrowOuterWidth" value="@popoverArrowWidth + 1" id="popoverArrowOuterWidth">
					</div>
				</div>

				<div class="control-group">
					<label for="popoverArrowOuterColor" class="control-label">@popoverArrowOuterColor</label>
					<div class="controls">
						<input type="text" name="popoverArrowOuterColor" value="rgba(0,0,0,0.25)" id="popoverArrowOuterColor">
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
						<input type="text" name="gridColumns" value="12" id="gridColumns">
					</div>
				</div>

				<div class="control-group">
					<label for="gridColumnWidth" class="control-label">@gridColumnWidth</label>
					<div class="controls">
						<input type="text" name="gridColumnWidth" value="60px" id="gridColumnWidth">
					</div>
				</div>
				<div class="control-group">
					<label for="gridGutterWidth" class="control-label">@gridGutterWidth</label>
					<div class="controls">
						<input type="text" name="gridGutterWidth" value="20px" id="gridGutterWidth">
					</div>
				</div>

				<div class="control-group">
					<label for="gridRowWidth" class="control-label">@gridRowWidth</label>
					<div class="controls">
						<input type="text" name="gridRowWidth" value="(@gridColumns * @gridColumnWidth) + (@gridGutterWidth * (@gridColumns - 1))" id="gridRowWidth">
					</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label for="gridColumnWidth1200" class="control-label">@gridColumnWidth1200</label>
					<div class="controls">
						<input type="text" name="gridColumnWidth1200" value="70px" id="gridColumnWidth1200">
					</div>
				</div>
				<div class="control-group">
					<label for="gridGutterWidth1200" class="control-label">@gridGutterWidth1200</label>
					<div class="controls">
						<input type="text" name="gridGutterWidth1200" value="30px" id="gridGutterWidth1200">
					</div>
				</div>

				<div class="control-group">
					<label for="gridRowWidth1200" class="control-label">@gridRowWidth1200</label>
					<div class="controls">
						<input type="text" name="gridRowWidth1200" value="(@gridColumns * @gridColumnWidth1200) + (@gridGutterWidth1200 * (@gridColumns - 1))" id="gridRowWidth1200">
					</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label for="gridColumnWidth768" class="control-label">@gridColumnWidth768</label>
					<div class="controls">
						<input type="text" name="gridColumnWidth768" value="70px" id="gridColumnWidth768">
					</div>
				</div>
				<div class="control-group">
					<label for="gridGutterWidth768" class="control-label">@gridGutterWidth768</label>
					<div class="controls">
						<input type="text" name="gridGutterWidth768" value="30px" id="gridGutterWidth768">
					</div>
				</div>

				<div class="control-group">
					<label for="gridRowWidth768" class="control-label">@gridRowWidth768</label>
					<div class="controls">
						<input type="text" name="gridRowWidth768" value="(@gridColumns * @gridColumnWidth768) + (@gridGutterWidth768 * (@gridColumns - 1))" id="gridRowWidth768">
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
						<input type="text" name="fluidGridColumnWidth" value="percentage(@gridColumnWidth/@gridRowWidth)" id="fluidGridColumnWidth">
					</div>
				</div>
				<div class="control-group">
					<label for="fluidGridGutterWidth" class="control-label">@fluidGridGutterWidth</label>
					<div class="controls">
						<input type="text" name="fluidGridGutterWidth" value="percentage(@gridGutterWidth/@gridRowWidth)" id="fluidGridGutterWidth">
					</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label for="fluidGridColumnWidth1200" class="control-label">@fluidGridColumnWidth1200</label>
					<div class="controls">
						<input type="text" name="fluidGridColumnWidth1200" value="percentage(@gridColumnWidth1200/@gridRowWidth1200)" id="fluidGridColumnWidth1200">
					</div>
				</div>
				<div class="control-group">
					<label for="fluidGridGutterWidth1200" class="control-label">@fluidGridGutterWidth1200</label>
					<div class="controls">
						<input type="text" name="fluidGridGutterWidth1200" value="percentage(@gridGutterWidth1200/@gridRowWidth1200)" id="fluidGridGutterWidth1200">
					</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label for="fluidGridColumnWidth768" class="control-label">@fluidGridColumnWidth768</label>
					<div class="controls">
						<input type="text" name="fluidGridColumnWidth768" value="percentage(@gridColumnWidth768/@gridRowWidth768)" id="fluidGridColumnWidth768">
					</div>
				</div>
				<div class="control-group">
					<label for="fluidGridGutterWidth768" class="control-label">@fluidGridGutterWidth768</label>
					<div class="controls">
						<input type="text" name="fluidGridGutterWidth768" value="percentage(@gridGutterWidth768/@gridRowWidth768)" id="fluidGridGutterWidth768">
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
						<input type="text" name="iconSpritePath" value="{assets}img/glyphicons-halflings.png" id="iconSpritePath">
					</div>
				</div>
				<div class="control-group">
					<label for="iconWhiteSpritePath" class="control-label">@iconWhiteSpritePath</label>
					<div class="controls">
						<input type="text" name="iconWhiteSpritePath" value="{assets}img/glyphicons-halflings-white.png" id="iconWhiteSpritePath">
					</div>
				</div>

				<!-- Extra -->
				<div class="control-group">
					<label for="idText" class="control-label">@idText</label>
					<div class="controls">
						<input type="text" name="idText" value="@grayLight" id="idText">
					</div>
				</div>
				<div class="control-group">
					<label for="placeholderText" class="control-label">@placeholderText</label>
					<div class="controls">
						<input type="text" name="placeholderText" value="@grayLight" id="placeholderText">
					</div>
				</div>
			</div>

			<!-- Hr -->
			<div class="span4">
				<div class="control-group">
					<label for="hrBorder" class="control-label">@hrBorder</label>
					<div class="controls">
						<input type="text" name="hrBorder" value="@grayLight" id="hrBorder">
					</div>
				</div>
				<div class="control-group">
					<label for="horizontalComponentOffset" class="control-label">@horizontalComponentOffset</label>
					<div class="controls">
						<input type="text" name="horizontalComponentOffset" value="180px" id="horizontalComponentOffset">
					</div>
				</div>
				<!-- well -->
				<div class="control-group">
					<label for="wellBackground" class="control-label">@wellBackground</label>
					<div class="controls">
						<input type="text" name="wellBackground" value="#F5F5F5" id="wellBackground">
					</div>
				</div>
			</div>
		</div>
	</fieldset>

	<fieldset>
		<Legend>Create Theme!</Legend>
		<div class="control-group">
			<div class="controls">
				<input type="submit" name="submit" value="Create Theme" class="btn btn-primary btn-large">
			</div>
		</div>
	</fieldset>
</form>
