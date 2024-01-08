.class Lorg/ejml/equation/MatrixConstructor$Item;
.super Ljava/lang/Object;
.source "MatrixConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ejml/equation/MatrixConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# instance fields
.field endRow:Z

.field matrix:Z

.field variable:Lorg/ejml/equation/Variable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lorg/ejml/equation/MatrixConstructor$Item;->endRow:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/ejml/equation/MatrixConstructor$1;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lorg/ejml/equation/MatrixConstructor$Item;-><init>()V

    return-void
.end method

.method private constructor <init>(Lorg/ejml/equation/Variable;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lorg/ejml/equation/MatrixConstructor$Item;->variable:Lorg/ejml/equation/Variable;

    .line 156
    instance-of p1, p1, Lorg/ejml/equation/VariableMatrix;

    iput-boolean p1, p0, Lorg/ejml/equation/MatrixConstructor$Item;->matrix:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/ejml/equation/Variable;Lorg/ejml/equation/MatrixConstructor$1;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lorg/ejml/equation/MatrixConstructor$Item;-><init>(Lorg/ejml/equation/Variable;)V

    return-void
.end method


# virtual methods
.method public getColumns()I
    .locals 2

    .line 172
    iget-boolean v0, p0, Lorg/ejml/equation/MatrixConstructor$Item;->matrix:Z

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/ejml/equation/MatrixConstructor$Item;->variable:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    return v0

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/ejml/equation/MatrixConstructor$Item;->variable:Lorg/ejml/equation/Variable;

    invoke-virtual {v0}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object v0

    sget-object v1, Lorg/ejml/equation/VariableType;->SCALAR:Lorg/ejml/equation/VariableType;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 176
    :cond_1
    iget-object v0, p0, Lorg/ejml/equation/MatrixConstructor$Item;->variable:Lorg/ejml/equation/Variable;

    invoke-virtual {v0}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object v0

    sget-object v1, Lorg/ejml/equation/VariableType;->INTEGER_SEQUENCE:Lorg/ejml/equation/VariableType;

    if-ne v0, v1, :cond_2

    .line 177
    iget-object v0, p0, Lorg/ejml/equation/MatrixConstructor$Item;->variable:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableIntegerSequence;

    iget-object v0, v0, Lorg/ejml/equation/VariableIntegerSequence;->sequence:Lorg/ejml/equation/IntegerSequence;

    invoke-interface {v0}, Lorg/ejml/equation/IntegerSequence;->length()I

    move-result v0

    return v0

    .line 179
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BUG! Should have been caught earlier"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMatrix()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/ejml/equation/MatrixConstructor$Item;->variable:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public getRows()I
    .locals 1

    .line 164
    iget-boolean v0, p0, Lorg/ejml/equation/MatrixConstructor$Item;->matrix:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/ejml/equation/MatrixConstructor$Item;->variable:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getValue()D
    .locals 2

    .line 188
    iget-object v0, p0, Lorg/ejml/equation/MatrixConstructor$Item;->variable:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableScalar;

    invoke-virtual {v0}, Lorg/ejml/equation/VariableScalar;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public initialize()V
    .locals 2

    .line 192
    iget-object v0, p0, Lorg/ejml/equation/MatrixConstructor$Item;->variable:Lorg/ejml/equation/Variable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/ejml/equation/MatrixConstructor$Item;->matrix:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object v0

    sget-object v1, Lorg/ejml/equation/VariableType;->INTEGER_SEQUENCE:Lorg/ejml/equation/VariableType;

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lorg/ejml/equation/MatrixConstructor$Item;->variable:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableIntegerSequence;

    iget-object v0, v0, Lorg/ejml/equation/VariableIntegerSequence;->sequence:Lorg/ejml/equation/IntegerSequence;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lorg/ejml/equation/IntegerSequence;->initialize(I)V

    :cond_0
    return-void
.end method
