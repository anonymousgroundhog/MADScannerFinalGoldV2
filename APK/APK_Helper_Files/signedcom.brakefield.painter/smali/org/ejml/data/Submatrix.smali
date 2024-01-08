.class public abstract Lorg/ejml/data/Submatrix;
.super Ljava/lang/Object;
.source "Submatrix.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lorg/ejml/data/Matrix;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public col0:I

.field public col1:I

.field public original:Lorg/ejml/data/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field public row0:I

.field public row1:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCols()I
    .locals 2

    .line 60
    iget v0, p0, Lorg/ejml/data/Submatrix;->col1:I

    iget v1, p0, Lorg/ejml/data/Submatrix;->col0:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRows()I
    .locals 2

    .line 56
    iget v0, p0, Lorg/ejml/data/Submatrix;->row1:I

    iget v1, p0, Lorg/ejml/data/Submatrix;->row0:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract print()V
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lorg/ejml/data/Submatrix;->original:Lorg/ejml/data/Matrix;

    .line 51
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    iput v0, p0, Lorg/ejml/data/Submatrix;->row1:I

    .line 52
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p1

    iput p1, p0, Lorg/ejml/data/Submatrix;->col1:I

    return-void
.end method

.method public set(Lorg/ejml/data/Matrix;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;IIII)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lorg/ejml/data/Submatrix;->original:Lorg/ejml/data/Matrix;

    .line 43
    iput p2, p0, Lorg/ejml/data/Submatrix;->row0:I

    .line 44
    iput p4, p0, Lorg/ejml/data/Submatrix;->col0:I

    .line 45
    iput p3, p0, Lorg/ejml/data/Submatrix;->row1:I

    .line 46
    iput p5, p0, Lorg/ejml/data/Submatrix;->col1:I

    return-void
.end method
