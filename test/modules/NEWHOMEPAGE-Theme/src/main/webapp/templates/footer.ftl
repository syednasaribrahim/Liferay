<div class="container">
    <div class="row">
        <!-- First Column -->
        <div class="col-md-6">
            <div class="row">
                <!-- About Company Section -->
                <div class="col-md-6 px-4 d-flex flex-column">
                    <h6 class="text-uppercase"><@liferay.language key="About-Company" /></h6>
                    <a href="https://www.nu.edu.sa/web/sada-university" class="btn-footer" target="_blank">
                        <@liferay.language key="Sada-Al-Jameah" />
                    </a><br>
                    <a href="https://dadr.nu.edu.sa/calendar" class="btn-footer" target="_blank">
                        <@liferay.language key="Academic-Calendar" />
                    </a><br>
                    <a href="https://www.nu.edu.sa/web/corporate-identity" class="btn-footer" target="_blank">
                        <@liferay.language key="Identity-University" />
                    </a><br>
                    <a href="https://lib.nu.edu.sa" class="btn-footer" target="_blank">
                        <@liferay.language key="SDL" />
                    </a>
                </div>

                <!-- Links of Interest Section -->
                <div class="col-md-6 px-4">
                    <h6 class="text-uppercase"><@liferay.language key="Links-Interest" /></h6>
                    <ul>
                        <li>
                            <a href="https://www.nu.edu.sa/office-of-the-president-of-the-university" target="_blank">
                                <@liferay.language key="University-President's-Office" />
                            </a>
                        </li>
                        <li>
                            <a href="https://edugate.nu.edu.sa/nu/ui/home.faces" target="_blank">
                                <@liferay.language key="online-Academic-portal" />
                            </a>
                        </li>
                        <li>
                            <a href="https://tadreb.nu.edu.sa/" target="_blank">
                                <@liferay.language key="Training-courses" />
                            </a>
                        </li>
                        <li>
                            <a href="https://www.nu.edu.sa/web/it/293" target="_blank">
                                <@liferay.language key="Student-Programs" />
                            </a>
                        </li>
                        <li>
                            <a href="https://www.nu.edu.sa/web/portal-policy" target="_blank">
                                <@liferay.language key="Portal-policy" />
                            </a>
                        </li>
                        <li>
                            <a href="https://opendata.nu.edu.sa/" target="_blank">
                                <@liferay.language key="open-data" />
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Second Column -->
        <div class="col-md-6">
            <div class="row">
                <!-- Related Links Section -->
                <div class="col-md-6 px-4">
                    <h6 class="text-uppercase"><@liferay.language key="Related-links" /></h6>
                    <ul>
                        <li>
                            <a href="https://moe.gov.sa/ar/pages/default.aspx" target="_blank">
                                <@liferay.language key="Ministry-of-education" />
                            </a>
                        </li>
                        <li>
                            <a href="https://www.hrsd.gov.sa/" target="_blank">
                                <@liferay.language key="Human-Resources" />
                            </a>
                        </li>
                        <li>
                            <a href="https://dga.gov.sa/" target="_blank">
                                <@liferay.language key="Digital-Government-Authority" />
                            </a>
                        </li>
                        <li>
                            <a href="https://nca.gov.sa/" target="_blank">
                                <@liferay.language key="Cyber-Security-Authority" />
                            </a>
                        </li>
                    </ul>
                </div>

                <!-- Contact Us Section -->
                <div class="col-md-6">
                    <h6 class="text-uppercase"><@liferay.language key="contact-us" /></h6>
                    <div class="social">
                        <!-- Beneficiary Care Center -->
                        <p ><@liferay.language key="Beneficiary-Care-Center" /></p>
                        <br/>
                        <a href="tel:017-542-8888" target="_blank"><i class="fa fa-phone" aria-hidden="true"></i></a>
                        <a href="https://wa.me/message/G2EDZM266PCPG1" target="_blank">
                            <i class="fa bi bi-whatsapp" aria-hidden="true"></i>
                        </a>
                        <a href="mailto:care@nu.edu.sa" target="_blank"><i class="fa fa-envelope" aria-hidden="true"></i></a>
                        <a href="https://twitter.com/nu_care_?lang=ar" target="_blank">
                            <i class="fa-brands fa-x-twitter"></i>
                        </a>
                        <br/>

                        <!-- Follow Us Section -->
                        <hr style="border-color: #ffffff;">
                        <p ><@liferay.language key="Follow-us" /></p>
                        <br/>
                        <a href="https://www.instagram.com/Najran_Univers/" target="_blank">
                            <i class="fa bi bi-instagram" aria-hidden="true"></i>
                        </a>
                        <a href="https://www.youtube.com/@Najran_Univers" target="_blank">
                            <i class="fa bi bi-youtube" aria-hidden="true"></i>
                        </a>
                        <a href="https://soundcloud.com/najran_univers" target="_blank">
                            <i class="fa fa-soundcloud" aria-hidden="true"></i>
                        </a>
                        <a href="https://twitter.com/Najran_Univers" target="_blank">
                            <i class="fa-brands fa-x-twitter"></i>
                        </a>
                        <br/>

                        <!-- Sign In Section -->
                        <#if !is_signed_in && show_sign_in>
                            <i class="fa fa-user" aria-hidden="true"></i>
                            <a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in"
                               rel="nofollow">${sign_in_text}</a>
                        </#if>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
