.class public Lorg/ejml/dense/row/DMatrixVisualization;
.super Ljava/lang/Object;
.source "DMatrixVisualization.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Lorg/ejml/data/DMatrixD1;Ljava/lang/String;)V
    .locals 4

    .line 48
    new-instance v0, Ljavax/swing/JFrame;

    invoke-direct {v0, p1}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 53
    iget p1, p0, Lorg/ejml/data/DMatrixD1;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    const/16 v2, 0x12c

    if-le p1, v1, :cond_0

    .line 54
    iget p1, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    mul-int/2addr p1, v2

    iget v1, p0, Lorg/ejml/data/DMatrixD1;->numRows:I

    div-int/2addr p1, v1

    move v3, v2

    move v2, p1

    move p1, v3

    goto :goto_0

    .line 56
    :cond_0
    iget p1, p0, Lorg/ejml/data/DMatrixD1;->numRows:I

    mul-int/2addr p1, v2

    iget v1, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    div-int/2addr p1, v1

    .line 59
    :goto_0
    new-instance v1, Lorg/ejml/dense/row/DMatrixComponent;

    invoke-direct {v1, v2, p1}, Lorg/ejml/dense/row/DMatrixComponent;-><init>(II)V

    .line 60
    invoke-virtual {v1, p0}, Lorg/ejml/dense/row/DMatrixComponent;->setMatrix(Lorg/ejml/data/DMatrixD1;)V

    const-string p0, "Center"

    .line 62
    invoke-virtual {v0, v1, p0}, Ljavax/swing/JFrame;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v0}, Ljavax/swing/JFrame;->pack()V

    const/4 p0, 0x1

    .line 65
    invoke-virtual {v0, p0}, Ljavax/swing/JFrame;->setVisible(Z)V

    return-void
.end method
