<!DOCTYPE html>
<#include init />
<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">
<head>
    <title>${html_title}</title>
    <meta content="initial-scale=1.0, width=device-width" name="viewport"/>
    <@liferay_util["include"] page=top_head_include />

    <!-- Include CSS files -->
    <@liferay.css file_name="${css_folder}/owl.carousel.min.css"/>
    <@liferay.css file_name="${css_folder}/owl.theme.default.min.css"/>

    <@liferay.js file_name="${javascript_folder}/owl.carousel.min.js" />

    <!-- Include FontAwesome -->
    <script src="https://kit.fontawesome.com/8e2e11d30a.js" crossorigin="anonymous"></script>

    <!-- Include Bootstrap Icons CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet"/>

    <!-- Include Cairo font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo&display=swap" rel="stylesheet">

    <!-- Include UserWay Accessibility Widget -->
    <script src="https://cdn.userway.org/widget.js" data-account="Ul5MY4x869"></script>

    <!-- Include Lazy Loading -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lazysizes/5.3.2/lazysizes.min.js" async></script>

    <!-- Google Tag Manager -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-HWJVRMG3L9"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());
        gtag('config', 'G-HWJVRMG3L9');


    </script>
</head>

<body class="${css_class} ">

<!-- Quick Access Menu -->
<@liferay_ui["quick-access"] contentId="#main-content" />

<!-- Include top content for the body -->
<@liferay_util["include"] page=body_top_include />
<@liferay.control_menu />

<!-- Header Start -->
<#if show_top_header>
    <header id="header"
            data-plugin-options="{'stickyEnabled': true, 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': false, 'stickyStartAt': 164, 'stickySetTop': '0px', 'stickyChangeLogo': false}">
        <div class="header-body border-0">
            <div class="header-top header-top-default border-bottom-0">
                <div class="d-flex justify-content-around">
                    <div class="header-row py-0">
                        <div class="header-column justify-content-start">
                            <div class="header-row">
                                <nav class="header-nav-top">
                                    <ul class="nav nav-pills text-uppercase text-2">
                                        <!-- Blackboard Link -->
                                        <li class="nav-item nav-item-anim-icon">
                                            <a class="nav-link text-light opacity-9 pe-0"
                                               href="https://login.nu.edu.sa/login?service=https%3A%2F%2Flms.nu.edu.sa%2Fwebapps%2Fbb-auth-provider-cas-BBLEARN%2Fexecute%2FcasLogin%3Fcmd%3Dlogin%26authProviderId%3D_106_1%26redirectUrl%3Dhttps%253A%252F%252Flms.nu.edu.sa%252Fwebapps%252Fportal%252Fexecute%252FdefaultTab%26globalLogoutEnabled%3Dtrue"
                                               target="_blank">
                                                <i class="fas fa-chalkboard"></i>
                                                <@liferay.language key="blackboard" />
                                            </a>
                                        </li>
                                        <!-- Library Link -->
                                        <li class="nav-item nav-item-anim-icon hidden-xs">
                                            <a class="nav-link text-light opacity-9 pe-0" href="https://dlaf.nu.edu.sa/"
                                               target="_blank">
                                                <i class="fas fa-book"></i>
                                                <@liferay.language key="library" />
                                            </a>
                                        </li>
                                        <!-- Human Resource Link -->
                                        <li class="nav-item nav-item-anim-icon hidden-xs hidden-sm hidden-md">
                                            <a class="nav-link text-light opacity-9 pe-0" href="https://hr.nu.edu.sa/"
                                               target="_blank">
                                                <i class="fas fa-users"></i>
                                                <@liferay.language key="Human-Resource" />
                                            </a>
                                        </li>
                                        <!-- Faculty Members Link -->
                                        <li class="nav-item nav-item-anim-icon">
                                            <a class="nav-link text-light opacity-9 pe-0"
                                               href="https://www.nu.edu.sa/staff-profile" target="_blank">
                                                <i class="fas fa-laptop"></i>
                                                <@liferay.language key="Faculty-Members" />
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="header-column justify-content-end">
                            <div class="header-row">
                                <nav class="header-nav-top">
                                    <ul class="nav nav-pills text-uppercase text-2">
                                        <!-- Student Affairs Link -->
                                        <li class="nav-item nav-item-anim-icon hidden-xs">
                                            <a class="nav-link text-light opacity-9 pe-0" href="https://dsaf.nu.edu.sa/">
                                                <i class="far fa-user" target="_blank"></i>
                                                <@liferay.language key="Student-Affairs" />
                                            </a>
                                        </li>
                                        <!-- Graduates Link -->
                                        <li class="nav-item nav-item-anim-icon hidden-xs">
                                            <a class="nav-link text-light opacity-9 pe-0"
                                               href="https://www.nu.edu.sa/web/graduate-gate/home" target="_blank">
                                                <i class="fas fa-graduation-cap"></i>
                                                <@liferay.language key="Graduates" />
                                            </a>
                                        </li>

                                        <!-- Language Toggle -->
                                        <li class="nav-item nav-item-anim-icon">
                                            <#assign languageRedirectURL = themeDisplay.getURLCurrent() />

                                            <!-- إزالة اللغة من الـ URL الحالي -->
                                            <#if languageRedirectURL?starts_with("/en")>
                                                <#assign languageRedirectURL = languageRedirectURL?replace("/en", "") />
                                            <#elseif languageRedirectURL?starts_with("/ar")>
                                                <#assign languageRedirectURL = languageRedirectURL?replace("/ar", "") />
                                            </#if>

                                            <!-- تحديد اللغة الحالية وتعديل الـ URL بناءً على اللغة -->
                                            <#if lang == 'ar'>
                                                <#assign languageRedirectURL = "/en" + languageRedirectURL />
                                            <#else>
                                                <#assign languageRedirectURL = "/ar" + languageRedirectURL />
                                            </#if>

                                            <!-- الرابط لتبديل اللغة -->
                                            <#if lang == 'en'>
                                                <a class="nav-link text-light opacity-9 pe-0"
                                                   href="javascript:void(0);"
                                                   onclick='changeLanguage("${languageRedirectURL}")'>
                                                    <i class="fa fa-globe"></i> عربي
                                                </a>
                                            <#else>
                                                <a class="nav-link text-light opacity-9 pe-0"
                                                   href="javascript:void(0);"
                                                   onclick='changeLanguage("${languageRedirectURL}")'>
                                                    <i class="fa fa-globe"></i> En
                                                </a>
                                            </#if>
                                        </li>



                                        <!-- User Personal Bar -->
                                        <#if is_signed_in>
                                            <li class="nav-item nav-item-anim-icon" style="height: 30px;">
                                                <@liferay.user_personal_bar />
                                            </li>
                                        <#-- Uncomment the following code block if needed
                                        <--    <#else>
                                        <--    <li class="nav-item nav-item-anim-icon">
                                        <--        <a class="nav-link text-light opacity-9 pe-0"
                                        <--           href="https://www.nu.edu.sa/web/mynu"><img style="width: 100px;"
                                        <--                                                      src="${images_folder}/mynu.png"/>
                                        <--        </a>
                                        <--    </li>
                                        -->
                                        </#if>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
</#if>
<!-- Header End -->

<!-- Navigation Section -->
<#if show_nav>
    <#if has_navigation && is_setup_complete>
        <#include "${full_templates_path}/navigation.ftl" />
    </#if>
</#if>

<!-- Content Section -->
<section id="content">
    <h2 class="hide-accessible sr-only" role="heading" aria-level="1">${htmlUtil.escape(the_title)}</h2>

    <#if selectable>
        <@liferay_util["include"] page=content_include />
    <#else>
        ${portletDisplay.recycle()}
        ${portletDisplay.setTitle(the_title)}

        <@liferay_theme["wrap-portlet"] page="portlet.ftl">
            <@liferay_util["include"] page=content_include />
        </@>
    </#if>
</section>



<!-- Custom Shape Divider -->
<div class="custom-shape-divider-bottom-1697224062">
    <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
        <path d="M0,0V46.29c47.79,22.2,103.59,32.17,158,28,70.36-5.37,136.33-33.31,206.8-37.5C438.64,32.43,512.34,53.67,583,72.05c69.27,18,138.3,24.88,209.4,13.08,36.15-6,69.85-17.84,104.45-29.34C989.49,25,1113-14.29,1200,52.47V0Z"
              opacity=".25" class="shape-fill"></path>
        <path d="M0,0V15.81C13,36.92,27.64,56.86,47.69,72.05,99.41,111.27,165,111,224.58,91.58c31.15-10.15,60.09-26.07,89.67-39.8,40.92-19,84.73-46,130.83-49.67,36.26-2.85,70.9,9.42,98.6,31.56,31.77,25.39,62.32,62,103.63,73,40.44,10.79,81.35-6.69,119.13-24.28s75.16-39,116.92-43.05c59.73-5.85,113.28,22.88,168.9,38.84,30.2,8.66,59,6.17,87.09-7.5,22.43-10.89,48-26.93,60.65-49.24V0Z"
              opacity=".5" class="shape-fill"></path>
        <path d="M0,0V5.63C149.93,59,314.09,71.32,475.83,42.57c43-7.64,84.23-20.12,127.61-26.46,59-8.63,112.48,12.24,165.56,35.4C827.93,77.22,886,95.24,951.2,90c86.53-7,172.46-45.71,248.8-84.81V0Z"
              class="shape-fill"></path>
    </svg>
</div>



<!-- Footer Section -->
<#if show_footer>
    <footer>
        <#include "${full_templates_path}/footer.ftl" />
        <div class="text-center footer-end fot-tex">
            <hr style="border-color: #ffffff; margin: 0; padding: 0;">
            <!-- This adds a horizontal line with color #ffffff (white) and removes margin and padding -->
            <a href="http://www.nu.edu.sa" class="text-white">2024 <i class="fa fa-copyright"></i> <@liferay.language key="copy-rights" /></a><br/>
        </div>
    </footer>
</#if>

<!-- Include bottom content for the body -->
<@liferay_util["include"] page=body_bottom_include />
<@liferay_util["include"] page=bottom_include />

</body>
</html>
