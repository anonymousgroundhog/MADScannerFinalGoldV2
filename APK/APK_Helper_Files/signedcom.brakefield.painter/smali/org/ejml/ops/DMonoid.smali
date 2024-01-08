.class public Lorg/ejml/ops/DMonoid;
.super Ljava/lang/Object;
.source "DMonoid.java"


# instance fields
.field public final func:Lorg/ejml/ops/DOperatorBinary;

.field public final id:D


# direct methods
.method public constructor <init>(DLorg/ejml/ops/DOperatorBinary;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lorg/ejml/ops/DMonoid;->id:D

    .line 33
    iput-object p3, p0, Lorg/ejml/ops/DMonoid;->func:Lorg/ejml/ops/DOperatorBinary;

    return-void
.end method

.method constructor <init>(Lorg/ejml/ops/DOperatorBinary;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 37
    invoke-direct {p0, v0, v1, p1}, Lorg/ejml/ops/DMonoid;-><init>(DLorg/ejml/ops/DOperatorBinary;)V

    return-void
.end method
