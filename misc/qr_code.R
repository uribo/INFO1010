library(qrencoder)

x <- "https://github.com/uribo/INFO1010"

png(here::here("image/qrcode.png"))
par(mar = c(0, 0, 0, 0))
image(
  qrencode_raster(x),
  asp = 1,
  col = c("white", "black"),
  axes = FALSE,
  xlab = "",
  ylab = ""
)
dev.off()
