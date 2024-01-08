.class public final synthetic Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:D


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;IID)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM$$ExternalSyntheticLambda0;->f$0:Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;

    iput p2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM$$ExternalSyntheticLambda0;->f$2:I

    iput-wide p4, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM$$ExternalSyntheticLambda0;->f$3:D

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 6

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM$$ExternalSyntheticLambda0;->f$0:Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM$$ExternalSyntheticLambda0;->f$2:I

    iget-wide v3, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM$$ExternalSyntheticLambda0;->f$3:D

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->lambda$householderSymmetric$0$org-ejml-dense-row-decomposition-hessenberg-TridiagonalDecompositionHouseholder_MT_DDRM(IIDI)V

    return-void
.end method
