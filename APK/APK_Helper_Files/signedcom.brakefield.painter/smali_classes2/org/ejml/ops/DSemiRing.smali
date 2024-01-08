.class public Lorg/ejml/ops/DSemiRing;
.super Ljava/lang/Object;
.source "DSemiRing.java"


# instance fields
.field public final add:Lorg/ejml/ops/DMonoid;

.field public final mult:Lorg/ejml/ops/DMonoid;


# direct methods
.method public constructor <init>(Lorg/ejml/ops/DMonoid;Lorg/ejml/ops/DMonoid;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/ejml/ops/DSemiRing;->add:Lorg/ejml/ops/DMonoid;

    .line 30
    iput-object p2, p0, Lorg/ejml/ops/DSemiRing;->mult:Lorg/ejml/ops/DMonoid;

    return-void
.end method
