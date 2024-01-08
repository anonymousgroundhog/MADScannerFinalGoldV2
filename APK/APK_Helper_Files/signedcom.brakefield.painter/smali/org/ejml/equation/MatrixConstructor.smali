.class public Lorg/ejml/equation/MatrixConstructor;
.super Ljava/lang/Object;
.source "MatrixConstructor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ejml/equation/MatrixConstructor$Item;
    }
.end annotation


# instance fields
.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ejml/equation/MatrixConstructor$Item;",
            ">;"
        }
    .end annotation
.end field

.field output:Lorg/ejml/equation/VariableMatrix;


# direct methods
.method public constructor <init>(Lorg/ejml/equation/ManagerTempVariables;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ejml/equation/MatrixConstructor;->items:Ljava/util/List;

    .line 38
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/equation/MatrixConstructor;->output:Lorg/ejml/equation/VariableMatrix;

    return-void
.end method


# virtual methods
.method public addToRow(Lorg/ejml/equation/Variable;)V
    .locals 3

    .line 42
    invoke-virtual {p1}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object v0

    sget-object v1, Lorg/ejml/equation/VariableType;->INTEGER_SEQUENCE:Lorg/ejml/equation/VariableType;

    if-ne v0, v1, :cond_1

    .line 43
    move-object v0, p1

    check-cast v0, Lorg/ejml/equation/VariableIntegerSequence;

    iget-object v0, v0, Lorg/ejml/equation/VariableIntegerSequence;->sequence:Lorg/ejml/equation/IntegerSequence;

    invoke-interface {v0}, Lorg/ejml/equation/IntegerSequence;->requiresMaxIndex()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Lorg/ejml/equation/ParseError;

    const-string v0, "Trying to create a matrix with an unbounded integer range. Forgot a value after a colon?"

    invoke-direct {p1, v0}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/ejml/equation/MatrixConstructor;->items:Ljava/util/List;

    new-instance v1, Lorg/ejml/equation/MatrixConstructor$Item;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/ejml/equation/MatrixConstructor$Item;-><init>(Lorg/ejml/equation/Variable;Lorg/ejml/equation/MatrixConstructor$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public construct()V
    .locals 14

    .line 56
    iget-object v0, p0, Lorg/ejml/equation/MatrixConstructor;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/MatrixConstructor$Item;

    iget-boolean v0, v0, Lorg/ejml/equation/MatrixConstructor$Item;->endRow:Z

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lorg/ejml/equation/MatrixConstructor;->endRow()V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 60
    :goto_0
    iget-object v2, p0, Lorg/ejml/equation/MatrixConstructor;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 61
    iget-object v2, p0, Lorg/ejml/equation/MatrixConstructor;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ejml/equation/MatrixConstructor$Item;

    invoke-virtual {v2}, Lorg/ejml/equation/MatrixConstructor$Item;->initialize()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_1
    iget-object v1, p0, Lorg/ejml/equation/MatrixConstructor;->output:Lorg/ejml/equation/VariableMatrix;

    iget-object v1, v1, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, v1}, Lorg/ejml/equation/MatrixConstructor;->setToRequiredSize(Lorg/ejml/data/DMatrixRMaj;)V

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    move v3, v2

    .line 68
    :goto_1
    iget-object v4, p0, Lorg/ejml/equation/MatrixConstructor;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 69
    iget-object v4, p0, Lorg/ejml/equation/MatrixConstructor;->items:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ejml/equation/MatrixConstructor$Item;

    .line 71
    iget-boolean v5, v4, Lorg/ejml/equation/MatrixConstructor$Item;->endRow:Z

    if-eqz v5, :cond_9

    move v4, v0

    move v5, v4

    move v6, v5

    .line 74
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_8

    .line 75
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/ejml/equation/MatrixConstructor$Item;

    .line 77
    invoke-virtual {v7}, Lorg/ejml/equation/MatrixConstructor$Item;->getRows()I

    move-result v8

    if-nez v4, :cond_2

    move v5, v8

    goto :goto_3

    .line 81
    :cond_2
    invoke-virtual {v7}, Lorg/ejml/equation/MatrixConstructor$Item;->getRows()I

    move-result v9

    if-ne v9, v5, :cond_7

    .line 85
    :goto_3
    iget-boolean v8, v7, Lorg/ejml/equation/MatrixConstructor$Item;->matrix:Z

    if-eqz v8, :cond_3

    .line 86
    invoke-virtual {v7}, Lorg/ejml/equation/MatrixConstructor$Item;->getMatrix()Lorg/ejml/data/DMatrixRMaj;

    move-result-object v8

    iget-object v9, p0, Lorg/ejml/equation/MatrixConstructor;->output:Lorg/ejml/equation/VariableMatrix;

    iget-object v9, v9, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v8, v9, v3, v6}, Lorg/ejml/dense/row/CommonOps_DDRM;->insert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/DMatrix;II)V

    goto :goto_5

    .line 87
    :cond_3
    iget-object v8, v7, Lorg/ejml/equation/MatrixConstructor$Item;->variable:Lorg/ejml/equation/Variable;

    invoke-virtual {v8}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object v8

    sget-object v9, Lorg/ejml/equation/VariableType;->SCALAR:Lorg/ejml/equation/VariableType;

    if-ne v8, v9, :cond_4

    .line 88
    iget-object v8, p0, Lorg/ejml/equation/MatrixConstructor;->output:Lorg/ejml/equation/VariableMatrix;

    iget-object v8, v8, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v7}, Lorg/ejml/equation/MatrixConstructor$Item;->getValue()D

    move-result-wide v9

    invoke-virtual {v8, v3, v6, v9, v10}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    goto :goto_5

    .line 89
    :cond_4
    iget-object v8, v7, Lorg/ejml/equation/MatrixConstructor$Item;->variable:Lorg/ejml/equation/Variable;

    invoke-virtual {v8}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object v8

    sget-object v9, Lorg/ejml/equation/VariableType;->INTEGER_SEQUENCE:Lorg/ejml/equation/VariableType;

    if-ne v8, v9, :cond_6

    .line 90
    iget-object v8, v7, Lorg/ejml/equation/MatrixConstructor$Item;->variable:Lorg/ejml/equation/Variable;

    check-cast v8, Lorg/ejml/equation/VariableIntegerSequence;

    iget-object v8, v8, Lorg/ejml/equation/VariableIntegerSequence;->sequence:Lorg/ejml/equation/IntegerSequence;

    move v9, v6

    .line 92
    :goto_4
    invoke-interface {v8}, Lorg/ejml/equation/IntegerSequence;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 93
    iget-object v10, p0, Lorg/ejml/equation/MatrixConstructor;->output:Lorg/ejml/equation/VariableMatrix;

    iget-object v10, v10, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 v11, v9, 0x1

    invoke-interface {v8}, Lorg/ejml/equation/IntegerSequence;->next()I

    move-result v12

    int-to-double v12, v12

    invoke-virtual {v10, v3, v9, v12, v13}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    move v9, v11

    goto :goto_4

    .line 98
    :cond_5
    :goto_5
    invoke-virtual {v7}, Lorg/ejml/equation/MatrixConstructor$Item;->getColumns()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 96
    :cond_6
    new-instance v0, Lorg/ejml/equation/ParseError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t insert a variable of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lorg/ejml/equation/MatrixConstructor$Item;->variable:Lorg/ejml/equation/Variable;

    invoke-virtual {v2}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inside a matrix!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    sget-object v2, Lcom/google/android/exoplayer2/upstream/cache/lCg/RbrVQrmMpaaGj;->fLodZWrjYTmEZ:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lorg/ejml/equation/MatrixConstructor$Item;->getRows()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    add-int/2addr v3, v5

    .line 102
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_6

    .line 104
    :cond_9
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method public endRow()V
    .locals 3

    .line 51
    iget-object v0, p0, Lorg/ejml/equation/MatrixConstructor;->items:Ljava/util/List;

    new-instance v1, Lorg/ejml/equation/MatrixConstructor$Item;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/ejml/equation/MatrixConstructor$Item;-><init>(Lorg/ejml/equation/MatrixConstructor$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getOutput()Lorg/ejml/equation/VariableMatrix;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/ejml/equation/MatrixConstructor;->output:Lorg/ejml/equation/VariableMatrix;

    return-object v0
.end method

.method protected setToRequiredSize(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 10

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 119
    :goto_0
    iget-object v5, p0, Lorg/ejml/equation/MatrixConstructor;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 120
    iget-object v5, p0, Lorg/ejml/equation/MatrixConstructor;->items:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ejml/equation/MatrixConstructor$Item;

    .line 122
    iget-boolean v6, v5, Lorg/ejml/equation/MatrixConstructor$Item;->endRow:Z

    if-eqz v6, :cond_4

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ejml/equation/MatrixConstructor$Item;

    .line 124
    invoke-virtual {v5}, Lorg/ejml/equation/MatrixConstructor$Item;->getRows()I

    move-result v6

    .line 125
    invoke-virtual {v5}, Lorg/ejml/equation/MatrixConstructor$Item;->getColumns()I

    move-result v5

    const/4 v7, 0x1

    .line 126
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 127
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/ejml/equation/MatrixConstructor$Item;

    .line 128
    invoke-virtual {v8}, Lorg/ejml/equation/MatrixConstructor$Item;->getRows()I

    move-result v9

    if-ne v9, v6, :cond_0

    .line 130
    invoke-virtual {v8}, Lorg/ejml/equation/MatrixConstructor$Item;->getColumns()I

    move-result v8

    add-int/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Row miss-matched. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lorg/ejml/equation/MatrixConstructor$Item;->getRows()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/2addr v3, v6

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    if-ne v4, v5, :cond_3

    .line 139
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_3

    .line 137
    :cond_3
    new-instance p1, Lorg/ejml/equation/ParseError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Row "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has an unexpected number of columns; expected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " found = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_4
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 145
    :cond_5
    invoke-virtual {p1, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    return-void
.end method
