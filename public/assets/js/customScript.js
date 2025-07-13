document.getElementById("toggleSidebar").addEventListener("click", function () {
    document.getElementById("sidebar").classList.toggle("collapsed");
    document.getElementById("toggleSidebar").classList.toggle("hidden");
    document.getElementById("closeSidebar").classList.toggle("hidden");
});

document.getElementById("closeSidebar").addEventListener("click", function () {
    document.getElementById("sidebar").classList.toggle("collapsed");
    document.getElementById("toggleSidebar").classList.toggle("hidden");
    document.getElementById("closeSidebar").classList.toggle("hidden");
});
