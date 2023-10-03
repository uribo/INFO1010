library(ggplot2)

tibble::tibble(
  a = "a",
  x = rev(c("授業への取り組み状況", "授業内容理解のための小テスト", "演習課題")),
  y = c(20, 30, 50),
  z = c(75, 35, 10),
  col = c("#00CCFF", "#006c9b", "#000033")
) |> 
  ggplot() +
  aes(a, y, fill = col) +
  geom_bar(stat = "identity", show.legend = FALSE) +
  geom_text(aes(label = x, y = z), size = 3, color = "white") +
  scale_fill_identity() + 
  coord_flip() +
  xlab(NULL) +
  ylab("成績評価(%)") +
  theme_minimal() +
  theme(axis.text.y = element_blank())

ggsave(here::here("image/grading.png"), width = 7, height = 1)
