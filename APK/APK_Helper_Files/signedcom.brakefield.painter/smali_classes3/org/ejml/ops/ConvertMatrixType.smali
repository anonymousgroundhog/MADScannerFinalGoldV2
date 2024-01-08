.class public Lorg/ejml/ops/ConvertMatrixType;
.super Ljava/lang/Object;
.source "ConvertMatrixType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Lorg/ejml/data/Matrix;Lorg/ejml/data/MatrixType;)Lorg/ejml/data/Matrix;
    .locals 7

    .line 39
    sget-object v0, Lorg/ejml/ops/ConvertMatrixType$1;->$SwitchMap$org$ejml$data$MatrixType:[I

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ejml/data/MatrixType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 152
    :pswitch_0
    sget-object v0, Lorg/ejml/ops/ConvertMatrixType$1;->$SwitchMap$org$ejml$data$MatrixType:[I

    invoke-virtual {p1}, Lorg/ejml/data/MatrixType;->ordinal()I

    move-result v6

    aget v0, v0, v6

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 174
    :cond_0
    new-instance v5, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(II)V

    .line 175
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/FMatrixSparseCSC;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-static {v0, v5}, Lorg/ejml/ops/ConvertMatrixData;->convert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/DMatrix;)V

    goto/16 :goto_0

    .line 169
    :cond_1
    new-instance v5, Lorg/ejml/data/CMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    .line 170
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/FMatrixSparseCSC;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/CMatrixRMaj;

    invoke-static {v0, v5}, Lorg/ejml/ops/ConvertMatrixData;->convert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/CMatrix;)V

    goto/16 :goto_0

    .line 164
    :cond_2
    new-instance v5, Lorg/ejml/data/ZMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    .line 165
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/FMatrixSparseCSC;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-static {v0, v5}, Lorg/ejml/ops/ConvertMatrixData;->convert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/ZMatrix;)V

    goto/16 :goto_0

    .line 159
    :cond_3
    new-instance v5, Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 160
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/FMatrixSparseCSC;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v0, v5}, Lorg/ejml/ops/FConvertMatrixStruct;->convert(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    goto/16 :goto_0

    .line 154
    :cond_4
    new-instance v5, Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 155
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/FMatrixSparseCSC;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0, v5}, Lorg/ejml/ops/ConvertMatrixData;->convert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/DMatrix;)V

    goto/16 :goto_0

    .line 123
    :pswitch_1
    sget-object v0, Lorg/ejml/ops/ConvertMatrixType$1;->$SwitchMap$org$ejml$data$MatrixType:[I

    invoke-virtual {p1}, Lorg/ejml/data/MatrixType;->ordinal()I

    move-result v6

    aget v0, v0, v6

    if-eq v0, v2, :cond_9

    if-eq v0, v1, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v4, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    goto/16 :goto_0

    .line 145
    :cond_5
    new-instance v5, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(II)V

    .line 146
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/DMatrixSparseCSC;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-static {v0, v5}, Lorg/ejml/ops/ConvertMatrixData;->convert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/FMatrix;)V

    goto/16 :goto_0

    .line 140
    :cond_6
    new-instance v5, Lorg/ejml/data/CMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    .line 141
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/DMatrixSparseCSC;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/CMatrixRMaj;

    invoke-static {v0, v5}, Lorg/ejml/ops/ConvertMatrixData;->convert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/CMatrix;)V

    goto/16 :goto_0

    .line 135
    :cond_7
    new-instance v5, Lorg/ejml/data/ZMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    .line 136
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/DMatrixSparseCSC;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-static {v0, v5}, Lorg/ejml/ops/ConvertMatrixData;->convert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/ZMatrix;)V

    goto/16 :goto_0

    .line 130
    :cond_8
    new-instance v5, Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 131
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/DMatrixSparseCSC;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v0, v5}, Lorg/ejml/ops/ConvertMatrixData;->convert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/FMatrix;)V

    goto/16 :goto_0

    .line 125
    :cond_9
    new-instance v5, Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 126
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/DMatrixSparseCSC;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0, v5}, Lorg/ejml/ops/DConvertMatrixStruct;->convert(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    goto/16 :goto_0

    .line 114
    :pswitch_2
    sget-object v0, Lorg/ejml/ops/ConvertMatrixType$1;->$SwitchMap$org$ejml$data$MatrixType:[I

    invoke-virtual {p1}, Lorg/ejml/data/MatrixType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_a

    goto/16 :goto_0

    .line 116
    :cond_a
    new-instance v5, Lorg/ejml/data/ZMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    .line 117
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/CMatrixRMaj;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-static {v0, v5}, Lorg/ejml/ops/ConvertMatrixData;->convert(Lorg/ejml/data/CMatrix;Lorg/ejml/data/ZMatrix;)V

    goto/16 :goto_0

    .line 105
    :pswitch_3
    sget-object v0, Lorg/ejml/ops/ConvertMatrixType$1;->$SwitchMap$org$ejml$data$MatrixType:[I

    invoke-virtual {p1}, Lorg/ejml/data/MatrixType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_b

    goto/16 :goto_0

    .line 107
    :cond_b
    new-instance v5, Lorg/ejml/data/CMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    .line 108
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/ZMatrixRMaj;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/CMatrixRMaj;

    invoke-static {v0, v5}, Lorg/ejml/ops/ConvertMatrixData;->convert(Lorg/ejml/data/ZMatrix;Lorg/ejml/data/CMatrix;)V

    goto/16 :goto_0

    .line 73
    :pswitch_4
    sget-object v0, Lorg/ejml/ops/ConvertMatrixType$1;->$SwitchMap$org$ejml$data$MatrixType:[I

    invoke-virtual {p1}, Lorg/ejml/data/MatrixType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 98
    :pswitch_5
    new-instance v5, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(II)V

    .line 99
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/FMatrixRMaj;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-static {v0, v5}, Lorg/ejml/ops/FConvertMatrixStruct;->convert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/FMatrix;)V

    goto/16 :goto_0

    .line 93
    :pswitch_6
    new-instance v5, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(II)V

    .line 94
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/FMatrixRMaj;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-static {v0, v5}, Lorg/ejml/ops/ConvertMatrixData;->convert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/DMatrix;)V

    goto/16 :goto_0

    .line 88
    :pswitch_7
    new-instance v5, Lorg/ejml/data/CMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    .line 89
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/FMatrixRMaj;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/CMatrixRMaj;

    invoke-static {v0, v5}, Lorg/ejml/ops/ConvertMatrixData;->convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    goto/16 :goto_0

    .line 83
    :pswitch_8
    new-instance v5, Lorg/ejml/data/ZMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    .line 84
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/FMatrixRMaj;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-static {v0, v5}, Lorg/ejml/ops/ConvertMatrixData;->convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    goto/16 :goto_0

    .line 75
    :pswitch_9
    invoke-interface {p0}, Lorg/ejml/data/Matrix;->copy()Lorg/ejml/data/Matrix;

    move-result-object v5

    goto/16 :goto_0

    .line 78
    :pswitch_a
    new-instance v5, Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 79
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/FMatrixRMaj;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0, v5}, Lorg/ejml/ops/ConvertMatrixData;->convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    goto/16 :goto_0

    .line 41
    :pswitch_b
    sget-object v0, Lorg/ejml/ops/ConvertMatrixType$1;->$SwitchMap$org$ejml$data$MatrixType:[I

    invoke-virtual {p1}, Lorg/ejml/data/MatrixType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 66
    :pswitch_c
    new-instance v5, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(II)V

    .line 67
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-static {v0, v5}, Lorg/ejml/ops/ConvertMatrixData;->convert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/FMatrix;)V

    goto :goto_0

    .line 61
    :pswitch_d
    new-instance v5, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(II)V

    .line 62
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-static {v0, v5}, Lorg/ejml/ops/DConvertMatrixStruct;->convert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/DMatrix;)V

    goto :goto_0

    .line 56
    :pswitch_e
    new-instance v5, Lorg/ejml/data/CMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    .line 57
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/CMatrixRMaj;

    invoke-static {v0, v5}, Lorg/ejml/ops/ConvertMatrixData;->convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V

    goto :goto_0

    .line 51
    :pswitch_f
    new-instance v5, Lorg/ejml/data/ZMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    .line 52
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-static {v0, v5}, Lorg/ejml/ops/ConvertMatrixData;->convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V

    goto :goto_0

    .line 46
    :pswitch_10
    new-instance v5, Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 47
    move-object v0, p0

    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    move-object v1, v5

    check-cast v1, Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v0, v5}, Lorg/ejml/ops/ConvertMatrixData;->convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    goto :goto_0

    .line 43
    :pswitch_11
    invoke-interface {p0}, Lorg/ejml/data/Matrix;->copy()Lorg/ejml/data/Matrix;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_c

    return-object v5

    .line 182
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
