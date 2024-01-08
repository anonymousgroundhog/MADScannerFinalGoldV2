.class public final Lorg/ejml/ops/DMonoids;
.super Ljava/lang/Object;
.source "DMonoids.java"


# static fields
.field public static final AND:Lorg/ejml/ops/DMonoid;

.field public static final MAX:Lorg/ejml/ops/DMonoid;

.field public static final MIN:Lorg/ejml/ops/DMonoid;

.field public static final OR:Lorg/ejml/ops/DMonoid;

.field public static final PLUS:Lorg/ejml/ops/DMonoid;

.field public static final TIMES:Lorg/ejml/ops/DMonoid;

.field public static final XNOR:Lorg/ejml/ops/DMonoid;

.field public static final XOR:Lorg/ejml/ops/DMonoid;


# direct methods
.method public static synthetic $r8$lambda$GDFvzl8wSLkHmMy5AREQhHd0Efc(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->sum(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lorg/ejml/ops/DMonoid;

    new-instance v1, Lorg/ejml/ops/DMonoids$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/ejml/ops/DMonoids$$ExternalSyntheticLambda0;-><init>()V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v2, v3, v1}, Lorg/ejml/ops/DMonoid;-><init>(DLorg/ejml/ops/DOperatorBinary;)V

    sput-object v0, Lorg/ejml/ops/DMonoids;->AND:Lorg/ejml/ops/DMonoid;

    .line 27
    new-instance v0, Lorg/ejml/ops/DMonoid;

    new-instance v1, Lorg/ejml/ops/DMonoids$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/ejml/ops/DMonoids$$ExternalSyntheticLambda1;-><init>()V

    const-wide/16 v4, 0x0

    invoke-direct {v0, v4, v5, v1}, Lorg/ejml/ops/DMonoid;-><init>(DLorg/ejml/ops/DOperatorBinary;)V

    sput-object v0, Lorg/ejml/ops/DMonoids;->OR:Lorg/ejml/ops/DMonoid;

    .line 28
    new-instance v0, Lorg/ejml/ops/DMonoid;

    new-instance v1, Lorg/ejml/ops/DMonoids$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/ejml/ops/DMonoids$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v0, v4, v5, v1}, Lorg/ejml/ops/DMonoid;-><init>(DLorg/ejml/ops/DOperatorBinary;)V

    sput-object v0, Lorg/ejml/ops/DMonoids;->XOR:Lorg/ejml/ops/DMonoid;

    .line 29
    new-instance v0, Lorg/ejml/ops/DMonoid;

    new-instance v1, Lorg/ejml/ops/DMonoids$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/ejml/ops/DMonoids$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v0, v4, v5, v1}, Lorg/ejml/ops/DMonoid;-><init>(DLorg/ejml/ops/DOperatorBinary;)V

    sput-object v0, Lorg/ejml/ops/DMonoids;->XNOR:Lorg/ejml/ops/DMonoid;

    .line 31
    new-instance v0, Lorg/ejml/ops/DMonoid;

    new-instance v1, Lorg/ejml/ops/DMonoids$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/ejml/ops/DMonoids$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {v0, v4, v5, v1}, Lorg/ejml/ops/DMonoid;-><init>(DLorg/ejml/ops/DOperatorBinary;)V

    sput-object v0, Lorg/ejml/ops/DMonoids;->PLUS:Lorg/ejml/ops/DMonoid;

    .line 32
    new-instance v0, Lorg/ejml/ops/DMonoid;

    new-instance v1, Lorg/ejml/ops/DMonoids$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/ejml/ops/DMonoids$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {v0, v2, v3, v1}, Lorg/ejml/ops/DMonoid;-><init>(DLorg/ejml/ops/DOperatorBinary;)V

    sput-object v0, Lorg/ejml/ops/DMonoids;->TIMES:Lorg/ejml/ops/DMonoid;

    .line 34
    new-instance v0, Lorg/ejml/ops/DMonoid;

    new-instance v1, Lorg/ejml/ops/DMonoids$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/ejml/ops/DMonoids$$ExternalSyntheticLambda6;-><init>()V

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-direct {v0, v2, v3, v1}, Lorg/ejml/ops/DMonoid;-><init>(DLorg/ejml/ops/DOperatorBinary;)V

    sput-object v0, Lorg/ejml/ops/DMonoids;->MIN:Lorg/ejml/ops/DMonoid;

    .line 35
    new-instance v0, Lorg/ejml/ops/DMonoid;

    new-instance v1, Lorg/ejml/ops/DMonoids$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/ejml/ops/DMonoids$$ExternalSyntheticLambda7;-><init>()V

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/ejml/ops/DMonoid;-><init>(DLorg/ejml/ops/DOperatorBinary;)V

    sput-object v0, Lorg/ejml/ops/DMonoids;->MAX:Lorg/ejml/ops/DMonoid;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0(DD)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-eqz p0, :cond_1

    cmpl-double p0, p2, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method static synthetic lambda$static$1(DD)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-nez p0, :cond_0

    cmpl-double p0, p2, v0

    if-eqz p0, :cond_1

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :cond_1
    return-wide v0
.end method

.method static synthetic lambda$static$2(DD)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-nez p0, :cond_0

    cmpl-double p1, p2, v0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    cmpl-double p0, p2, v0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method static synthetic lambda$static$3(DD)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-nez p0, :cond_0

    cmpl-double p1, p2, v0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    cmpl-double p0, p2, v0

    if-eqz p0, :cond_2

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :cond_2
    return-wide v0
.end method

.method static synthetic lambda$static$4(DD)D
    .locals 0

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method static synthetic lambda$static$5(DD)D
    .locals 1

    cmpg-double v0, p0, p2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide p0, p2

    :goto_0
    return-wide p0
.end method

.method static synthetic lambda$static$6(DD)D
    .locals 1

    cmpl-double v0, p0, p2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide p0, p2

    :goto_0
    return-wide p0
.end method
