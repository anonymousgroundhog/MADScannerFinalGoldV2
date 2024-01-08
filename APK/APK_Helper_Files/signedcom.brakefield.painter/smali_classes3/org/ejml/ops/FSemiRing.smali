.class public Lorg/ejml/ops/FSemiRing;
.super Ljava/lang/Object;
.source "FSemiRing.java"


# instance fields
.field public final add:Lorg/ejml/ops/FMonoid;

.field public final mult:Lorg/ejml/ops/FMonoid;


# direct methods
.method public constructor <init>(Lorg/ejml/ops/FMonoid;Lorg/ejml/ops/FMonoid;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/ejml/ops/FSemiRing;->add:Lorg/ejml/ops/FMonoid;

    .line 32
    iput-object p2, p0, Lorg/ejml/ops/FSemiRing;->mult:Lorg/ejml/ops/FMonoid;

    return-void
.end method
