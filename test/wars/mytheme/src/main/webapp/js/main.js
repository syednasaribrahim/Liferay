/**
 * SPDX-FileCopyrightText: (c) 2000 Liferay, Inc. https://liferay.com
 * SPDX-License-Identifier: LGPL-2.1-or-later OR LicenseRef-Liferay-DXP-EULA-2.0.0-2023-06
 */

/*
 * This function gets loaded when all the HTML, not including the portlets, is
 * loaded.
 */
AUI().ready(function () {
});

/*
 * This function gets loaded after each and every portlet on the page.
 *
 * portletId: the current portlet's id
 * node: the Alloy Node object of the current portlet
 */
Liferay.Portlet.ready(function (_portletId, _node) {
});

//dropdown
document.addEventListener('DOMContentLoaded', function () {
    const dropdowns = document.querySelectorAll('.custom-dropdown .dropdown-toggle');

    dropdowns.forEach(function (dropdown) {
        dropdown.addEventListener('click', function (e) {
            e.preventDefault();

            const parent = dropdown.closest('.custom-dropdown');
            const menu = parent.querySelector('.dropdown-menu-custom');
            const isMenuOpen = menu.style.display === 'block';

            // إغلاق جميع القوائم المفتوحة
            document.querySelectorAll('.custom-dropdown .dropdown-menu-custom').forEach(function (otherMenu) {
                otherMenu.style.display = 'none';
            });

            // إذا كانت القائمة الحالية مغلقة، افتحها
            if (!isMenuOpen) {
                menu.style.display = 'block';
            }
        });
    });

    // إغلاق القائمة عند النقر خارجها
    document.addEventListener('click', function (e) {
        if (!e.target.closest('.custom-dropdown')) {
            document.querySelectorAll('.custom-dropdown .dropdown-menu-custom').forEach(function (menu) {
                menu.style.display = 'none';
            });
        }
    });
});




/*
 * This function gets loaded when everything, including the portlets, is on
 * the page.
 */
//dropdown
//Liferay.on('allPortletsReady', function () {});





//animation

function reveal() {
    var reveals = document.querySelectorAll(".reveal");

    for (var i = 0; i < reveals.length; i++) {
        var windowHeight = window.innerHeight;
        var elementTop = reveals[i].getBoundingClientRect().top;
        var elementVisible = 150;

        if (elementTop < windowHeight - elementVisible) {
            reveals[i].classList.add("active");
        } else {
            reveals[i].classList.remove("active");
        }
    }
}

window.addEventListener("scroll", reveal);

///changeLanguage
function changeLanguage(link) {
    window.location.href = link;
}



//Lazy Loading
document.addEventListener("DOMContentLoaded", function() {
    // Check if IntersectionObserver is supported
    if ('IntersectionObserver' in window) {

        // Lazy Loading for images
        const images = document.querySelectorAll('img.lazyload');
        const imageObserver = new IntersectionObserver((entries, observer) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    const img = entry.target;
                    img.setAttribute('src', img.getAttribute('data-src')); // Replace 'data-src' with 'src'
                    img.removeAttribute('data-src'); // Remove 'data-src'
                    img.classList.add('lazyloaded'); // Add class for images that are loaded
                    observer.unobserve(img); // Stop observing the image after it's loaded
                }
            });
        });

        images.forEach(img => {
            imageObserver.observe(img); // Observe each image
        });

        // Lazy Loading for videos
        const videos = document.querySelectorAll('video.lazyload');
        const videoObserver = new IntersectionObserver(entries => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    const video = entry.target;
                    const sources = video.querySelectorAll('source');

                    // Load video sources
                    sources.forEach(source => {
                        source.setAttribute('src', source.getAttribute('data-src'));
                    });

                    video.load(); // Start loading the video
                    video.classList.add('lazyloaded'); // Add class for videos that are loaded
                    videoObserver.unobserve(video); // Stop observing the video after it's loaded
                }
            });
        });

        videos.forEach(video => {
            videoObserver.observe(video); // Observe each video
        });

    } else {
        // Fallback if the browser does not support IntersectionObserver

        // Load images without Lazy Loading
        const images = document.querySelectorAll('img.lazyload');
        images.forEach(img => {
            img.setAttribute('src', img.getAttribute('data-src'));
            img.removeAttribute('data-src');
            img.classList.add('lazyloaded');
        });

        // Load videos without Lazy Loading
        const videos = document.querySelectorAll('video.lazyload');
        videos.forEach(video => {
            const sources = video.querySelectorAll('source');
            sources.forEach(source => {
                source.setAttribute('src', source.getAttribute('data-src'));
            });
            video.load();
            video.classList.add('lazyloaded');
        });
    }
});














	