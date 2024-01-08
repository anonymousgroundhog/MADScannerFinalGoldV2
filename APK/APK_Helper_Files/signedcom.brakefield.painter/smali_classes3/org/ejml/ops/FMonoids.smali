.class public final Lorg/ejml/ops/FMonoids;
.super Ljava/lang/Object;
.source "FMonoids.java"


# static fields
.field public static final AND:Lorg/ejml/ops/FMonoid;

.field public static final MAX:Lorg/ejml/ops/FMonoid;

.field public static final MIN:Lorg/ejml/ops/FMonoid;

.field public static final OR:Lorg/ejml/ops/FMonoid;

.field public static final PLUS:Lorg/ejml/ops/FMonoid;

.field public static final TIMES:Lorg/ejml/ops/FMonoid;

.field public static final XNOR:Lorg/ejml/ops/FMonoid;

.field public static final XOR:Lorg/ejml/ops/FMonoid;


# direct methods
.method public static synthetic $r8$lambda$o_Mook6vadOet1o11xDsK05f_tE(FF)F
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Float;->sum(FF)F

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Lorg/ejml/ops/FMonoid;

    new-instance v1, Lorg/ejml/ops/FMonoids$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/ejml/ops/FMonoids$$ExternalSyntheticLambda0;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, Lorg/ejml/ops/FMonoid;-><init>(FLorg/ejml/ops/FOperatorBinary;)V

    sput-object v0, Lorg/ejml/ops/FMonoids;->AND:Lorg/ejml/ops/FMonoid;

    .line 29
    new-instance v0, Lorg/ejml/ops/FMonoid;

    new-instance v1, Lorg/ejml/ops/FMonoids$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/ejml/ops/FMonoids$$ExternalSyntheticLambda1;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1}, Lorg/ejml/ops/FMonoid;-><init>(FLorg/ejml/ops/FOperatorBinary;)V

    sput-object v0, Lorg/ejml/ops/FMonoids;->OR:Lorg/ejml/ops/FMonoid;

    .line 30
    new-instance v0, Lorg/ejml/ops/FMonoid;

    new-instance v1, Lorg/ejml/ops/FMonoids$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/ejml/ops/FMonoids$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v0, v3, v1}, Lorg/ejml/ops/FMonoid;-><init>(FLorg/ejml/ops/FOperatorBinary;)V

    sput-object v0, Lorg/ejml/ops/FMonoids;->XOR:Lorg/ejml/ops/FMonoid;

    .line 31
    new-instance v0, Lorg/ejml/ops/FMonoid;

    new-instance v1, Lorg/ejml/ops/FMonoids$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/ejml/ops/FMonoids$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v0, v3, v1}, Lorg/ejml/ops/FMonoid;-><init>(FLorg/ejml/ops/FOperatorBinary;)V

    sput-object v0, Lorg/ejml/ops/FMonoids;->XNOR:Lorg/ejml/ops/FMonoid;

    .line 33
    new-instance v0, Lorg/ejml/ops/FMonoid;

    new-instance v1, Lorg/ejml/ops/FMonoids$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/ejml/ops/FMonoids$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {v0, v3, v1}, Lorg/ejml/ops/FMonoid;-><init>(FLorg/ejml/ops/FOperatorBinary;)V

    sput-object v0, Lorg/ejml/ops/FMonoids;->PLUS:Lorg/ejml/ops/FMonoid;

    .line 34
    new-instance v0, Lorg/ejml/ops/FMonoid;

    new-instance v1, Lorg/ejml/ops/FMonoids$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/ejml/ops/FMonoids$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {v0, v2, v1}, Lorg/ejml/ops/FMonoid;-><init>(FLorg/ejml/ops/FOperatorBinary;)V

    sput-object v0, Lorg/ejml/ops/FMonoids;->TIMES:Lorg/ejml/ops/FMonoid;

    .line 36
    new-instance v0, Lorg/ejml/ops/FMonoid;

    new-instance v1, Lorg/ejml/ops/FMonoids$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/ejml/ops/FMonoids$$ExternalSyntheticLambda6;-><init>()V

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {v0, v2, v1}, Lorg/ejml/ops/FMonoid;-><init>(FLorg/ejml/ops/FOperatorBinary;)V

    sput-object v0, Lorg/ejml/ops/FMonoids;->MIN:Lorg/ejml/ops/FMonoid;

    .line 37
    new-instance v0, Lorg/ejml/ops/FMonoid;

    new-instance v1, Lorg/ejml/ops/FMonoids$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/ejml/ops/FMonoids$$ExternalSyntheticLambda7;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/ejml/ops/FMonoid;-><init>(FLorg/ejml/ops/FOperatorBinary;)V

    sput-object v0, Lorg/ejml/ops/FMonoids;->MAX:Lorg/ejml/ops/FMonoid;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0(FF)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_1

    cmpl-float p0, p1, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic lambda$static$1(FF)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    cmpl-float p0, p1, v0

    if-eqz p0, :cond_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    return v0
.end method

.method static synthetic lambda$static$2(FF)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    cmpl-float p0, p1, v0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    :goto_0
    return v0
.end method

.method static synthetic lambda$static$3(FF)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    cmpl-float p0, p1, v0

    if-eqz p0, :cond_2

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    return v0
.end method

.method static synthetic lambda$static$4(FF)F
    .locals 0

    mul-float/2addr p0, p1

    return p0
.end method

.method static synthetic lambda$static$5(FF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method static synthetic lambda$static$6(FF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method
