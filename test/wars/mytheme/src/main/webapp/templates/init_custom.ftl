<#--
This file allows you to override and define new FreeMarker variables.
-->

<#assign
show_nav = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-nav"))
show_top_header = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-top-header"))
show_footer = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-footer"))
show_name = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-name"))
/>


<#assign lang = locale.getLanguage()/>
<#assign language = locale.getLanguage()/>