.class public interface abstract Lorg/ejml/data/DMatrixSparse;
.super Ljava/lang/Object;
.source "DMatrixSparse.java"

# interfaces
.implements Lorg/ejml/data/DMatrix;
.implements Lorg/ejml/data/MatrixSparse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;
    }
.end annotation


# virtual methods
.method public abstract createCoordinateIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get(IID)D
.end method

.method public abstract unsafe_get(IID)D
.end method
