<div class="custom-navigation">
    <nav class="navbar navbar-expand-lg p-0" id="navigation" role="navigation">

        <!-- Logo for small screens -->
        <div class="header-logo hidden-md hidden-lg">
            <a class="${logo_css_class} navbar-brand" href="${site_default_url}"
               title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
                <img alt="logo" src="${site_logo}"/>
                <span class="site-name-container ml-2">
                    <#if lang == "ar">
                        ${getterUtil.getString(themeDisplay.getThemeSetting("sitename-ar"))}
                    <#else>
                        ${getterUtil.getString(themeDisplay.getThemeSetting("sitename-en"))}
                    </#if>
                </span>
            </a>
        </div>

        <!-- Navigation Toggler (hamburger icon) for mobile view -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="fa fa-bars" aria-hidden="true"></span>
        </button>

        <!-- Navigation List (menu items) -->
        <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
            <ul class="navbar-nav mb-2 mb-lg-0">

                <!-- Logo for larger screens -->
                <li class="nav-item">
                    <a class="${logo_css_class} navbar-brand hidden-xs" href="${site_default_url}"
                       title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
                        <img class="logo-img" alt="logo" src="${site_logo}"/>
                        <span class="site-name-container ml-2">
                            <#if lang == "ar">
                                ${getterUtil.getString(themeDisplay.getThemeSetting("sitename-ar"))}
                            <#else>
                                ${getterUtil.getString(themeDisplay.getThemeSetting("sitename-en"))}
                            </#if>
                        </span>
                    </a>
                </li>

                <!-- Start of Navigation Items -->
                <#list nav_items as nav_item>
                    <#assign nav_item_attr_has_popup = "" />
                    <#assign nav_item_css_class = "" />
                    <#assign nav_item_layout = nav_item.getLayout() />

                    <!-- Add 'selected' class if the current item is selected -->
                    <#if nav_item.isSelected()>
                        <#assign nav_item_attr_has_popup = "aria-haspopup='true'" />
                        <#assign nav_item_css_class = "selected" />
                    </#if>

                    <!-- Single Menu Item (without dropdown) -->
                    <#if !nav_item.hasChildren()>
                        <li class="${nav_item_css_class} nav-item" id="layout_${nav_item.getLayoutId()}" role="presentation">
                            <a class="nav-link" ${nav_item_attr_has_popup} href="${nav_item.getURL()}">
                                ${nav_item.getName()}
                            </a>
                        </li>

                        <!-- Menu Item with Dropdown -->
                    <#else>
                        <li class="${nav_item_css_class} nav-item dropdown custom-dropdown" id="layout_${nav_item.getLayoutId()}" role="presentation">
                            <a class="dropdown-toggle nav-link" role="button" data-toggle="dropdown"
                               aria-expanded="false" ${nav_item_attr_has_popup} href="javascript:void(0)">
                                ${nav_item.getName()}
                                <i class="fa fa-caret-down"></i>
                            </a>

                            <#assign single_dropdown_item_class = "" />
                            <#list nav_item.getChildren() as nav_child>
                                <#if !nav_child.hasChildren()>
                                    <#assign single_dropdown_item_class = "single-dropdown-item-custom" />
                                </#if>
                            </#list>

                            <!-- Dropdown Menu -->
                            <div class="dropdown-menu w-100 mt-0 dropdown-menu-custom ${single_dropdown_item_class}">
                                <div class="row mx-0">
                                    <#list nav_item.getChildren() as nav_child>
                                        <!-- Mega Menu Column if nav_child has children -->
                                        <#if nav_child.hasChildren()>
                                            <div class="col-lg-3 ${single_dropdown_item_class}">
                                                <div class="list-group list-group-flush">
                                                    <!-- Submenu header -->
                                                    <p class="mb-0 list-group-item p-1">
                                                        ${nav_child.getName()}
                                                    </p>
                                                    <!-- List of submenu items -->
                                                    <#list nav_child.getChildren() as sub_nav_child>
                                                        <a href="${sub_nav_child.getURL()}"
                                                           class="list-group-item list-group-item-action p-1 border-0">
                                                            ${sub_nav_child.getName()}
                                                        </a>
                                                    </#list>
                                                </div>
                                            </div>
                                            <!-- Single Dropdown Item -->
                                        <#else>
                                            <a class="dropdown-item" href="${nav_child.getURL()}">
                                                ${nav_child.getName()}
                                            </a>
                                        </#if>
                                    </#list>
                                </div>
                            </div>
                        </li>
                    </#if>
                </#list>
            </ul>
        </div>
    </nav>
</div>
