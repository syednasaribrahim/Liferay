<!--NavBar -->

<div class=" w-100 " style="background-color: #1d3e6c;">
    <div class="col-md-11">
        <nav class="navbar navbar-expand-lg navbar-dark text-uppercase top-navbar-nu"
             style="background-color: #1d3e6c;">

            <#if is_signed_in>
                <@liferay.user_personal_bar />
            </#if>

            <#if show_site_name>
                <span class="navbar-brand" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
			${site_name}
		</span>
            </#if>

            <div class="pull-right language-bar">

                <#assign languageRedirectURL = themeDisplay.getURLCurrent() />

                <#if languageRedirectURL?starts_with("/en")>
                    <#assign languageRedirectURL = languageRedirectURL?replace("/en", "") />
                <#elseif languageRedirectURL?starts_with("/ar")>
                    <#assign languageRedirectURL = languageRedirectURL?replace("/ar", "") />
                </#if>

                <#if locale.language=='ar' >
                    <#assign languageRedirectURL = "/en" + languageRedirectURL />
                <#else>
                    <#assign languageRedirectURL = "/ar" + languageRedirectURL />
                </#if>
                <a class="nav-link text-light opacity-9 pe-0" onclick='changeLanguage("${languageRedirectURL}")'><i
                            class="fa fa-globe"></i>
                    <@liferay.language key="nu-lang" />
                </a>
            </div>


            <div class="collapse navbar-collapse  justify-content-around" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <!--blackboard-->
                    <a class="nav-link active" target="_blank"
                       href="https://login.nu.edu.sa/login?service=https%3A%2F%2Flms.nu.edu.sa%2Fwebapps%2Fbb-auth-provider-cas-BBLEARN%2Fexecute%2FcasLogin%3Fcmd%3Dlogin%26authProviderId%3D_106_1%26redirectUrl%3Dhttps%253A%252F%252Flms.nu.edu.sa%252Fwebapps%252Fportal%252Fexecute%252FdefaultTab%26globalLogoutEnabled%3Dtrue">
                        <i class="fa-solid fa-chalkboard"></i>
                        <@liferay.language key="blackboard" />
                    </a>
                    <!--Library-->
                    <a class="nav-link active" href="https://dlaf.nu.edu.sa" target="_blank">
                        <i class="fa-solid fa-book"></i>
                        <@liferay.language key="library" />
                    </a>
                    <!--Human Resource  -->
                    <a class="nav-link active" href="https://dhr.nu.edu.sa" target="_blank">
                        <i class="fa-solid fa-people-group"></i>
                        <@liferay.language key="Human-Resource" />
                    </a>
                    <!--Faculty Members   -->
                    <a class="nav-link active" href="https://www.nu.edu.sa/staff-profile" target="_blank">
                        <i class="fa-solid fa-users"></i>
                        <@liferay.language key="Faculty-Members" />
                    </a>
                    <!--Student Affairs -->
                    <a class="nav-link active" href="https://dsaf.nu.edu.sa" target="_blank">
                        <i class="fa-solid fa-school"></i>
                        <@liferay.language key="Student-Affairs" />
                    </a>
                    <!--Graduates -->
                    <a class="nav-link active" href="https://www.nu.edu.sa/web/graduate-gate/home" target="_blank">
                        <i class="fa-solid fa-graduation-cap"></i>
                        <@liferay.language key="Graduates" />
                    </a>
                    <!--Email -->
                    <a class="nav-link active" target="_blank"
                       href="https://sts.nu.edu.sa/adfs/ls/?wa=wsignin1.0&wtrealm=https%3a%2f%2fmail.nu.edu.sa%2fowa%2f&wctx=rm%3d0%26id%3dpassive%26ru%3d%252fowa%252f&wct=2023-10-07T15%3a24%3a26Z">
                        <i class="fa-solid fa-envelope"></i>
                        <@liferay.language key="Email" />
                    </a>
                    <!--MyNU -->
                    <a class="nav-link active" target="_blank"
                       href="https://login.nu.edu.sa/login?service=https%3A%2F%2Fwww.nu.edu.sa%2Fc%2Fportal%2Flogin%3Fredirect%3D%252Fen%252Fweb%252Fmynu%26refererPlid%3D123844069%26p_l_id%3D123844069">
                        <i class="fa-solid fa-link"></i>
                        MY<b>NU</b>
                    </a>
                </div>
            </div>


        </nav>

    </div>
</div>
  	