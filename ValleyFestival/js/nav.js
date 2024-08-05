import { $ } from "../utils/querySelector.js";

const menu1 = $(".menu_1");
const menu2 = $(".menu_2");
const menu3 = $(".menu_3");
const menu4 = $(".menu_4");

const menu1Title = $(".menu_1_title");
const menu2Title = $(".menu_2_title");
const menu3Title = $(".menu_3_title");
const menu4Title = $(".menu_4_title");

const subMenu1 = $(".sub_menu_1");
const subMenu2 = $(".sub_menu_2");
const subMenu3 = $(".sub_menu_3");
const subMenu4 = $(".sub_menu_4");

menu1.addEventListener("mouseover", () => {
  menu1Title.textContent = "축제소개";
  subMenu1.style.display = "flex";
});

menu1.addEventListener("mouseout", () => {
  menu1Title.textContent = "Vallery";
  subMenu1.style.display = "none";
});

menu2.addEventListener("mouseover", () => {
  menu2Title.textContent = "예약안내";
  subMenu2.style.display = "flex";
});

menu2.addEventListener("mouseout", () => {
  menu2Title.textContent = "Tickets";
  subMenu2.style.display = "none";
});

menu3.addEventListener("mouseover", () => {
  menu3Title.textContent = "아티스트";
  subMenu3.style.display = "flex";
});

menu3.addEventListener("mouseout", () => {
  menu3Title.textContent = "Artists";
  subMenu3.style.display = "none";
});

menu4.addEventListener("mouseover", () => {
  menu4Title.textContent = "커뮤니티";
  subMenu4.style.display = "flex";
});

menu4.addEventListener("mouseout", () => {
  menu4Title.textContent = "Community";
  subMenu4.style.display = "none";
});
