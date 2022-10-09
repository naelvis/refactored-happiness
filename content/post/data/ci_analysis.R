library(tidyverse)
library(stringdist)
library(vroom)
library(ggplot2)
library(viridis)
library(igraph)

setwd("~/Documents/R/refactored-happiness/content/post/data")

input <- vroom("citta_invisibili.csv")

ci_comb <- input %>% 
  mutate(Name2 = Name) %>% 
  expand(Name, Name2) %>% 
  full_join(input) %>% 
  full_join(input, by = c("Name2" = "Name")) %>% 
  mutate(Type = as.factor(ifelse(Type.x == Type.y, 1, 0)))%>% 
  select(Name, Name2, Type, Type.x) %>% 
  mutate(Distance = stringdist(Name, Name2, "dl")) %>% 
  filter(Name != Name2) %>% 
  group_by(Name) %>% 
  mutate(Min_Dist = min(Distance)) %>% 
  ungroup() %>% 
  filter(Distance == Min_Dist) %>% 
  mutate(Distance_Inv = 2/Distance)

ggplot(ci_comb, aes(x = Name, y = Name2, shape = Type, color = Distance)) +
  geom_point() +
  scale_color_viridis(option = "turbo") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust=0.5))

dl_graph <- graph_from_data_frame(ci_comb,
                                  directed = FALSE)

plot(dl_graph, 
     edge.width = E(dl_graph)$Distance,
     edge.lty = (as.numeric(as.factor(E(dl_graph)$Type))+ 1),
     curved = TRUE)

dl_graph2 <- network(ci_comb[!duplicated(t(apply(ci_comb[c("Name", "Name2")], 1, sort))), ], 
                     matrix.type = "edgelist",
                     directed = FALSE)

dl_graph2 %v% "Tipo" = ifelse(unique(ci_comb$Type.x) %in% "Memoria", 
                               "Memoria", 
                               ifelse(unique(ci_comb$Type.x) %in% "Desiderio", 
                                      "Desiderio", 
                                      ifelse(unique(ci_comb$Type.x) %in% "Segni", 
                                             "Segni", 
                                             ifelse(unique(ci_comb$Type.x) %in% "Sottile", 
                                                    "Sottile", 
                                                    ifelse(unique(ci_comb$Type.x) %in% "Scambi", 
                                                           "Scambi", 
                                                           ifelse(unique(ci_comb$Type.x) %in% "Occhi", 
                                                                  "Occhi", 
                                                                  ifelse(unique(ci_comb$Type.x) %in% "Nome", 
                                                                         "Nome", 
                                                                         ifelse(unique(ci_comb$Type.x) %in% "Morti", 
                                                                                "Morti", 
                                                                                ifelse(unique(ci_comb$Type.x) %in% "Cielo", 
                                                                                       "Cielo", 
                                                                                       ifelse(unique(ci_comb$Type.x) %in% "Continua", 
                                                                                              "Continua", 
                                                                                              "Nascosta")
                                                                                       )
                                                                                )
                                                                         )
                                                                  )
                                                           )
                                                    )
                                             )
                                      )
                               )

ggnet2(dl_graph2,
       label = TRUE,
       #edge.label = "Distance",
       edge.size = "Distance_Inv",
       color = "Tipo",
       palette = "Set3",
       edge.color = c("color", "grey50"),
       label.size = 3)
                                  