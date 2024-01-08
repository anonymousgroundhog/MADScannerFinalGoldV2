.class Lcom/brakefield/painter/zeroLatency/KalmanFilter;
.super Ljava/lang/Object;
.source "KalmanFilter.java"


# instance fields
.field public F:Lorg/ejml/data/DMatrixRMaj;

.field public H:Lorg/ejml/data/DMatrixRMaj;

.field public K:Lorg/ejml/data/DMatrixRMaj;

.field public P:Lorg/ejml/data/DMatrixRMaj;

.field public Q:Lorg/ejml/data/DMatrixRMaj;

.field public R:Lorg/ejml/data/DMatrixRMaj;

.field private eq:Lorg/ejml/equation/Equation;

.field private predict:[Lorg/ejml/equation/Sequence;

.field private update:[Lorg/ejml/equation/Sequence;

.field public x:Lorg/ejml/data/DMatrixRMaj;

.field public xDim:I

.field public zDim:I


# direct methods
.method public constructor <init>(II)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x4

    .line 19
    iput v3, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->xDim:I

    const/4 v4, 0x1

    .line 22
    iput v4, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->zDim:I

    .line 45
    new-instance v5, Lorg/ejml/equation/Equation;

    invoke-direct {v5}, Lorg/ejml/equation/Equation;-><init>()V

    iput-object v5, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->eq:Lorg/ejml/equation/Equation;

    .line 50
    iput v1, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->xDim:I

    .line 51
    iput v2, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->zDim:I

    .line 53
    new-instance v5, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v5, v1, v4}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v5, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->x:Lorg/ejml/data/DMatrixRMaj;

    .line 54
    invoke-static {v1, v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->identity(II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object v5

    iput-object v5, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->P:Lorg/ejml/data/DMatrixRMaj;

    .line 55
    invoke-static {v1, v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->identity(II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object v5

    iput-object v5, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->Q:Lorg/ejml/data/DMatrixRMaj;

    .line 56
    invoke-static {v2, v2}, Lorg/ejml/dense/row/CommonOps_DDRM;->identity(II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object v5

    iput-object v5, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->R:Lorg/ejml/data/DMatrixRMaj;

    .line 57
    new-instance v5, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v5, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v5, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->F:Lorg/ejml/data/DMatrixRMaj;

    .line 58
    new-instance v5, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v5, v2, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v5, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->H:Lorg/ejml/data/DMatrixRMaj;

    .line 59
    new-instance v5, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v5, v1, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v5, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->K:Lorg/ejml/data/DMatrixRMaj;

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->reset()V

    .line 62
    iget-object v1, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->eq:Lorg/ejml/equation/Equation;

    iget-object v5, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->x:Lorg/ejml/data/DMatrixRMaj;

    const-string/jumbo v6, "x"

    iget-object v7, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->P:Lorg/ejml/data/DMatrixRMaj;

    const-string v8, "P"

    iget-object v9, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->Q:Lorg/ejml/data/DMatrixRMaj;

    const-string v10, "Q"

    iget-object v11, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->R:Lorg/ejml/data/DMatrixRMaj;

    const-string v12, "R"

    iget-object v13, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->F:Lorg/ejml/data/DMatrixRMaj;

    const-string v14, "F"

    iget-object v15, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->H:Lorg/ejml/data/DMatrixRMaj;

    const-string v16, "H"

    iget-object v3, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->K:Lorg/ejml/data/DMatrixRMaj;

    const-string v18, "K"

    move-object/from16 v17, v3

    filled-new-array/range {v5 .. v18}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/ejml/equation/Equation;->alias([Ljava/lang/Object;)V

    .line 63
    iget-object v1, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->eq:Lorg/ejml/equation/Equation;

    new-instance v3, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v3, v2, v4}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    const-string/jumbo v2, "z"

    invoke-virtual {v1, v3, v2}, Lorg/ejml/equation/Equation;->alias(Lorg/ejml/data/DMatrixRMaj;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v2, v1, [Lorg/ejml/equation/Sequence;

    .line 65
    iget-object v3, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->eq:Lorg/ejml/equation/Equation;

    const-string/jumbo v5, "x = F * x"

    .line 66
    invoke-virtual {v3, v5}, Lorg/ejml/equation/Equation;->compile(Ljava/lang/String;)Lorg/ejml/equation/Sequence;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    iget-object v3, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->eq:Lorg/ejml/equation/Equation;

    const-string v6, "P = F * P * F\' + Q"

    .line 67
    invoke-virtual {v3, v6}, Lorg/ejml/equation/Equation;->compile(Ljava/lang/String;)Lorg/ejml/equation/Sequence;

    move-result-object v3

    aput-object v3, v2, v4

    iput-object v2, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->predict:[Lorg/ejml/equation/Sequence;

    const/4 v2, 0x6

    new-array v2, v2, [Lorg/ejml/equation/Sequence;

    .line 69
    iget-object v3, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->eq:Lorg/ejml/equation/Equation;

    const-string/jumbo v6, "y = z - H * x"

    .line 70
    invoke-virtual {v3, v6}, Lorg/ejml/equation/Equation;->compile(Ljava/lang/String;)Lorg/ejml/equation/Sequence;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->eq:Lorg/ejml/equation/Equation;

    const-string v5, "S = H * P * H\' + R"

    .line 71
    invoke-virtual {v3, v5}, Lorg/ejml/equation/Equation;->compile(Ljava/lang/String;)Lorg/ejml/equation/Sequence;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->eq:Lorg/ejml/equation/Equation;

    const-string v4, "K = P * H\' * inv(S)"

    .line 72
    invoke-virtual {v3, v4}, Lorg/ejml/equation/Equation;->compile(Ljava/lang/String;)Lorg/ejml/equation/Sequence;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v1, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->eq:Lorg/ejml/equation/Equation;

    const-string/jumbo v3, "x = x + K * y"

    .line 73
    invoke-virtual {v1, v3}, Lorg/ejml/equation/Equation;->compile(Ljava/lang/String;)Lorg/ejml/equation/Sequence;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    iget-object v1, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->eq:Lorg/ejml/equation/Equation;

    const-string v3, "I_KH = eye(P) - K * H"

    .line 74
    invoke-virtual {v1, v3}, Lorg/ejml/equation/Equation;->compile(Ljava/lang/String;)Lorg/ejml/equation/Sequence;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v2, v3

    iget-object v1, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->eq:Lorg/ejml/equation/Equation;

    const/4 v3, 0x0

    sget-object v3, Lcom/fasterxml/jackson/core/base/wdxk/XdOzfHnSj;->dACGgtGyXbxK:Ljava/lang/String;

    .line 75
    invoke-virtual {v1, v3}, Lorg/ejml/equation/Equation;->compile(Ljava/lang/String;)Lorg/ejml/equation/Sequence;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v2, v3

    iput-object v2, v0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->update:[Lorg/ejml/equation/Sequence;

    return-void
.end method


# virtual methods
.method public predict()V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->predict:[Lorg/ejml/equation/Sequence;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 87
    invoke-virtual {v3}, Lorg/ejml/equation/Sequence;->perform()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->x:Lorg/ejml/data/DMatrixRMaj;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    .line 81
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->P:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->setIdentity(Lorg/ejml/data/DMatrix1Row;)V

    .line 82
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->K:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    return-void
.end method

.method public update(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->eq:Lorg/ejml/equation/Equation;

    const-string/jumbo v1, "z"

    invoke-virtual {v0, p1, v1}, Lorg/ejml/equation/Equation;->alias(Lorg/ejml/data/DMatrixRMaj;Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/KalmanFilter;->update:[Lorg/ejml/equation/Sequence;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 95
    invoke-virtual {v2}, Lorg/ejml/equation/Sequence;->perform()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
