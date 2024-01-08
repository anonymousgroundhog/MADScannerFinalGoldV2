.class public Lorg/ejml/ops/FMonoid;
.super Ljava/lang/Object;
.source "FMonoid.java"


# instance fields
.field public final func:Lorg/ejml/ops/FOperatorBinary;

.field public final id:F


# direct methods
.method public constructor <init>(FLorg/ejml/ops/FOperatorBinary;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lorg/ejml/ops/FMonoid;->id:F

    .line 35
    iput-object p2, p0, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    return-void
.end method

.method constructor <init>(Lorg/ejml/ops/FOperatorBinary;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0, p1}, Lorg/ejml/ops/FMonoid;-><init>(FLorg/ejml/ops/FOperatorBinary;)V

    return-void
.end method
