.class public Lorg/ejml/equation/VariableMatrix;
.super Lorg/ejml/equation/Variable;
.source "VariableMatrix.java"


# instance fields
.field public matrix:Lorg/ejml/data/DMatrixRMaj;

.field public temp:Z


# direct methods
.method public constructor <init>(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 1

    .line 43
    sget-object v0, Lorg/ejml/equation/VariableType;->MATRIX:Lorg/ejml/equation/VariableType;

    invoke-direct {p0, v0}, Lorg/ejml/equation/Variable;-><init>(Lorg/ejml/equation/VariableType;)V

    .line 44
    iput-object p1, p0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

.method public static createTemp()Lorg/ejml/equation/VariableMatrix;
    .locals 3

    .line 48
    new-instance v0, Lorg/ejml/equation/VariableMatrix;

    new-instance v1, Lorg/ejml/data/DMatrixRMaj;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    invoke-direct {v0, v1}, Lorg/ejml/equation/VariableMatrix;-><init>(Lorg/ejml/data/DMatrixRMaj;)V

    .line 49
    invoke-virtual {v0, v2}, Lorg/ejml/equation/VariableMatrix;->setTemp(Z)V

    return-object v0
.end method


# virtual methods
.method public isTemp()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lorg/ejml/equation/VariableMatrix;->temp:Z

    return v0
.end method

.method public setTemp(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lorg/ejml/equation/VariableMatrix;->temp:Z

    return-void
.end method
