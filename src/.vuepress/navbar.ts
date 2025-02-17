import { navbar } from "vuepress-theme-hope";

export default navbar([
  {
    text: "DL",
    link: "/posts/DL/前言.md"
  },
  {
    text: "python",
    link: "/posts/python/torch.md"
  },
  {
    text: "Banana",
    icon: "pen-to-square",
    prefix: "/posts/banana/",
    children: [
      {
        text: "Banana 1",
        icon: "pen-to-square",
        link: "1",
      },
      {
        text: "Banana 2",
        icon: "pen-to-square",
        link: "2",
      },
      "3",
      "4",
    ],
  },
  {
    text: "Posts",
    icon: "pen-to-square",
    prefix: "/posts/other/",
    children: [
      { text: "Cherry", icon: "pen-to-square", link: "cherry" },
      { text: "Dragon Fruit", icon: "pen-to-square", link: "dragonfruit" },
      "tomato",
      "strawberry",
    ],
  }
]);
