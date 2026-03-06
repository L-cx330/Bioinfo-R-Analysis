# 题目一：向量化思维与逻辑索引 (Logical Indexing)
# 任务：
# 1. 生成100个模拟基因表达量 counts。
# 2. 提取 counts 中大于30的值赋值给 high_expr。
# 3. 统计 counts 中等于0的细胞数量。
# 4. 将 counts 中小于5的值替换为0。
set.seed(42)
counts <- rnbinom(n = 100, size = 1, prob = 0.1)
counts
high_expr <- counts[counts > 30]
high_expr
num_zero <- sum(counts == 0)
num_zero
counts[counts < 5] <- 0
counts


# 题目二：矩阵属性与降维运算 (Matrix Operations)
# 任务：
# 1. 创建3行4列按行填充的矩阵 expr_mat (1到12)。
# 2. 命名行为基因: TP53, KRAS, APC。
# 3. 命名列为细胞: Cell_1 到 Cell_4。
# 4. 计算每个基因的平均表达量，和每个细胞的表达量总和。
expr_mat <- matrix(1:12, nrow = 3, ncol = 4, byrow = TRUE,
                  dimnames = list(c("TP53", "KRAS", "APC"),
                c("Cell_1", "Cell_2", "Cell_3", "Cell_4")))
expr_mat
rowMeans(expr_mat)
colSums(expr_mat)


# 题目三：R语言的万能容器 —— 列表 (List)
# 任务：
# 1. 创建包含 Project_Name, Cell_Count, QC_Pass 的列表 project_meta。
# 2. 分别使用单括号 [ 和双括号 [[ 提取 Cell_Count。
project_meta <- list(Project_Name = "Single_Cell_Analysis",
        Cell_Count = 5000, QC_Pass = c(TRUE, FALSE, TRUE))
project_meta
project_meta[[2]]
project_meta[2]
