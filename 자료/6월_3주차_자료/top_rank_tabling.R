top_rank_tabling <- function(df, top = 10, except = "none"){
  message("Relative abundance기반으로, 각 미생물 그룹간 평균량을 계산하여 top ranking으로 정리합니다.\n(미입력시 top 기본값은 10입니다)")
  
  if(top >= (nrow(df))){
    stop("top 값이 미생물의 종류보다 많거나 같습니다. 확인 바랍니다.\n (미입력시 top 기본값은 10입니다)")
  }
  
  if(!all(is.character(except))){
    stop("제외할 taxa를 문자형 벡터로 입력해 주세요")
  }

  numeric_check <- c()
  for(i in 1:ncol(df)){
    numeric_check <- c(numeric_check, is.numeric(df[, i]))
  }
  
  df[, which(numeric_check)] <- 
    #6월 3주차, Relative abundance 구하는 반복문의 벡터라이제이션 (이해 난이도: 중급)
    apply(df[, which(numeric_check)], 2, function(x){x/sum(x)*100})
  
  rank_order <- rowSums(df[, which(numeric_check)]) |> order(decreasing = TRUE)
  
  ordered_df <- df[rank_order, ]

  # 제외할 taxa를 지정할 경우 발동, top 목록에서 제외
  if(except != "none"){
    if(!numeric_check[1]){
        rownames(ordered_df) <- NULL
        except_row <- which(ordered_df[,1] %in% except)
      }else if(all(numeric_check)){
        except_row <- which(rownames(ordered_df) %in% except)
      }
      ordered_df <- rbind(ordered_df[-1*exept_row, ], ordered_df[exept_row, ])
  } # 제외할 taxa 지정 시 발동 코드 끝
  
  if(!numeric_check[1]){
    rownames(ordered_df) <- NULL
  }

  top_df <- ordered_df[1:top, ]
  
  top_df <- rbind(top_df, top_df[1, ])
  
  top_df[(top+1), 1] <- "Others"
  
  top_df[(top+1), numeric_check] <- 
    ordered_df[(top+1):nrow(ordered_df), numeric_check] |>
    colSums()
  
  return(
    print(top_df)
  )
}

# 이하 예시
phylum <- read.csv("phylum.csv")

top_3_phylum <- top_rank_tabling(df, 3)
top_3_phylum


top_5_phylum <- top_rank_tabling(df, 5)
top_5_phylum
