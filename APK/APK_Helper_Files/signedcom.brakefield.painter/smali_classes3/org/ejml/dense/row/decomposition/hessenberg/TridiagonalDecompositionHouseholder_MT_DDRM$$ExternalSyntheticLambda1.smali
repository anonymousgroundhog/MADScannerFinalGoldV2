.class public final synthetic Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM$$ExternalSyntheticLambda1;->f$0:Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;

    iput p2, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM$$ExternalSyntheticLambda1;->f$0:Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;

    iget v1, p0, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM$$ExternalSyntheticLambda1;->f$1:I

    invoke-virtual {v0, v1, p1}, Lorg/ejml/dense/row/decomposition/hessenberg/TridiagonalDecompositionHouseholder_MT_DDRM;->lambda$householderSymmetric$1$org-ejml-dense-row-decomposition-hessenberg-TridiagonalDecompositionHouseholder_MT_DDRM(II)V

    return-void
.end method
