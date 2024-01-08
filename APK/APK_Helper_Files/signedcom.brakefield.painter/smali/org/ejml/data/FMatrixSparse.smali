.class public interface abstract Lorg/ejml/data/FMatrixSparse;
.super Ljava/lang/Object;
.source "FMatrixSparse.java"

# interfaces
.implements Lorg/ejml/data/FMatrix;
.implements Lorg/ejml/data/MatrixSparse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;
    }
.end annotation


# virtual methods
.method public abstract createCoordinateIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get(IIF)F
.end method

.method public abstract unsafe_get(IIF)F
.end method
