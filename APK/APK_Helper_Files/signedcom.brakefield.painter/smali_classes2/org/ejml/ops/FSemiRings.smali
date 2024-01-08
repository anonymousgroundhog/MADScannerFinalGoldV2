.class public final Lorg/ejml/ops/FSemiRings;
.super Ljava/lang/Object;
.source "FSemiRings.java"


# static fields
.field public static final AND_OR:Lorg/ejml/ops/FSemiRing;

.field private static final FIRST:Lorg/ejml/ops/FMonoid;

.field public static final MAX_FIRST:Lorg/ejml/ops/FSemiRing;

.field public static final MAX_MIN:Lorg/ejml/ops/FSemiRing;

.field public static final MAX_PLUS:Lorg/ejml/ops/FSemiRing;

.field public static final MAX_SECOND:Lorg/ejml/ops/FSemiRing;

.field public static final MAX_TIMES:Lorg/ejml/ops/FSemiRing;

.field public static final MIN_FIRST:Lorg/ejml/ops/FSemiRing;

.field public static final MIN_MAX:Lorg/ejml/ops/FSemiRing;

.field public static final MIN_PLUS:Lorg/ejml/ops/FSemiRing;

.field public static final MIN_SECOND:Lorg/ejml/ops/FSemiRing;

.field public static final MIN_TIMES:Lorg/ejml/ops/FSemiRing;

.field public static final OR_AND:Lorg/ejml/ops/FSemiRing;

.field public static final PLUS_MIN:Lorg/ejml/ops/FSemiRing;

.field public static final PLUS_TIMES:Lorg/ejml/ops/FSemiRing;

.field private static final SECOND:Lorg/ejml/ops/FMonoid;

.field public static final XNOR_OR:Lorg/ejml/ops/FSemiRing;

.field public static final XOR_AND:Lorg/ejml/ops/FSemiRing;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Lorg/ejml/ops/FSemiRing;

    sget-object v1, Lorg/ejml/ops/FMonoids;->PLUS:Lorg/ejml/ops/FMonoid;

    sget-object v2, Lorg/ejml/ops/FMonoids;->TIMES:Lorg/ejml/ops/FMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/FSemiRing;-><init>(Lorg/ejml/ops/FMonoid;Lorg/ejml/ops/FMonoid;)V

    sput-object v0, Lorg/ejml/ops/FSemiRings;->PLUS_TIMES:Lorg/ejml/ops/FSemiRing;

    .line 32
    new-instance v0, Lorg/ejml/ops/FSemiRing;

    sget-object v1, Lorg/ejml/ops/FMonoids;->MIN:Lorg/ejml/ops/FMonoid;

    sget-object v2, Lorg/ejml/ops/FMonoids;->PLUS:Lorg/ejml/ops/FMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/FSemiRing;-><init>(Lorg/ejml/ops/FMonoid;Lorg/ejml/ops/FMonoid;)V

    sput-object v0, Lorg/ejml/ops/FSemiRings;->MIN_PLUS:Lorg/ejml/ops/FSemiRing;

    .line 33
    new-instance v0, Lorg/ejml/ops/FSemiRing;

    sget-object v1, Lorg/ejml/ops/FMonoids;->MAX:Lorg/ejml/ops/FMonoid;

    sget-object v2, Lorg/ejml/ops/FMonoids;->PLUS:Lorg/ejml/ops/FMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/FSemiRing;-><init>(Lorg/ejml/ops/FMonoid;Lorg/ejml/ops/FMonoid;)V

    sput-object v0, Lorg/ejml/ops/FSemiRings;->MAX_PLUS:Lorg/ejml/ops/FSemiRing;

    .line 34
    new-instance v0, Lorg/ejml/ops/FSemiRing;

    sget-object v1, Lorg/ejml/ops/FMonoids;->MIN:Lorg/ejml/ops/FMonoid;

    sget-object v2, Lorg/ejml/ops/FMonoids;->TIMES:Lorg/ejml/ops/FMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/FSemiRing;-><init>(Lorg/ejml/ops/FMonoid;Lorg/ejml/ops/FMonoid;)V

    sput-object v0, Lorg/ejml/ops/FSemiRings;->MIN_TIMES:Lorg/ejml/ops/FSemiRing;

    .line 35
    new-instance v0, Lorg/ejml/ops/FSemiRing;

    sget-object v1, Lorg/ejml/ops/FMonoids;->MIN:Lorg/ejml/ops/FMonoid;

    sget-object v2, Lorg/ejml/ops/FMonoids;->MAX:Lorg/ejml/ops/FMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/FSemiRing;-><init>(Lorg/ejml/ops/FMonoid;Lorg/ejml/ops/FMonoid;)V

    sput-object v0, Lorg/ejml/ops/FSemiRings;->MIN_MAX:Lorg/ejml/ops/FSemiRing;

    .line 36
    new-instance v0, Lorg/ejml/ops/FSemiRing;

    sget-object v1, Lorg/ejml/ops/FMonoids;->MAX:Lorg/ejml/ops/FMonoid;

    sget-object v2, Lorg/ejml/ops/FMonoids;->MIN:Lorg/ejml/ops/FMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/FSemiRing;-><init>(Lorg/ejml/ops/FMonoid;Lorg/ejml/ops/FMonoid;)V

    sput-object v0, Lorg/ejml/ops/FSemiRings;->MAX_MIN:Lorg/ejml/ops/FSemiRing;

    .line 37
    new-instance v0, Lorg/ejml/ops/FSemiRing;

    sget-object v1, Lorg/ejml/ops/FMonoids;->MAX:Lorg/ejml/ops/FMonoid;

    sget-object v2, Lorg/ejml/ops/FMonoids;->TIMES:Lorg/ejml/ops/FMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/FSemiRing;-><init>(Lorg/ejml/ops/FMonoid;Lorg/ejml/ops/FMonoid;)V

    sput-object v0, Lorg/ejml/ops/FSemiRings;->MAX_TIMES:Lorg/ejml/ops/FSemiRing;

    .line 38
    new-instance v0, Lorg/ejml/ops/FSemiRing;

    sget-object v1, Lorg/ejml/ops/FMonoids;->PLUS:Lorg/ejml/ops/FMonoid;

    sget-object v2, Lorg/ejml/ops/FMonoids;->MIN:Lorg/ejml/ops/FMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/FSemiRing;-><init>(Lorg/ejml/ops/FMonoid;Lorg/ejml/ops/FMonoid;)V

    sput-object v0, Lorg/ejml/ops/FSemiRings;->PLUS_MIN:Lorg/ejml/ops/FSemiRing;

    .line 40
    new-instance v0, Lorg/ejml/ops/FSemiRing;

    sget-object v1, Lorg/ejml/ops/FMonoids;->OR:Lorg/ejml/ops/FMonoid;

    sget-object v2, Lorg/ejml/ops/FMonoids;->AND:Lorg/ejml/ops/FMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/FSemiRing;-><init>(Lorg/ejml/ops/FMonoid;Lorg/ejml/ops/FMonoid;)V

    sput-object v0, Lorg/ejml/ops/FSemiRings;->OR_AND:Lorg/ejml/ops/FSemiRing;

    .line 41
    new-instance v0, Lorg/ejml/ops/FSemiRing;

    sget-object v1, Lorg/ejml/ops/FMonoids;->AND:Lorg/ejml/ops/FMonoid;

    sget-object v2, Lorg/ejml/ops/FMonoids;->OR:Lorg/ejml/ops/FMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/FSemiRing;-><init>(Lorg/ejml/ops/FMonoid;Lorg/ejml/ops/FMonoid;)V

    sput-object v0, Lorg/ejml/ops/FSemiRings;->AND_OR:Lorg/ejml/ops/FSemiRing;

    .line 42
    new-instance v0, Lorg/ejml/ops/FSemiRing;

    sget-object v1, Lorg/ejml/ops/FMonoids;->XOR:Lorg/ejml/ops/FMonoid;

    sget-object v2, Lorg/ejml/ops/FMonoids;->AND:Lorg/ejml/ops/FMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/FSemiRing;-><init>(Lorg/ejml/ops/FMonoid;Lorg/ejml/ops/FMonoid;)V

    sput-object v0, Lorg/ejml/ops/FSemiRings;->XOR_AND:Lorg/ejml/ops/FSemiRing;

    .line 43
    new-instance v0, Lorg/ejml/ops/FSemiRing;

    sget-object v1, Lorg/ejml/ops/FMonoids;->XNOR:Lorg/ejml/ops/FMonoid;

    sget-object v2, Lorg/ejml/ops/FMonoids;->OR:Lorg/ejml/ops/FMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/FSemiRing;-><init>(Lorg/ejml/ops/FMonoid;Lorg/ejml/ops/FMonoid;)V

    sput-object v0, Lorg/ejml/ops/FSemiRings;->XNOR_OR:Lorg/ejml/ops/FSemiRing;

    .line 46
    new-instance v0, Lorg/ejml/ops/FMonoid;

    new-instance v1, Lorg/ejml/ops/FSemiRings$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/ejml/ops/FSemiRings$$ExternalSyntheticLambda0;-><init>()V

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v2, v1}, Lorg/ejml/ops/FMonoid;-><init>(FLorg/ejml/ops/FOperatorBinary;)V

    sput-object v0, Lorg/ejml/ops/FSemiRings;->FIRST:Lorg/ejml/ops/FMonoid;

    .line 47
    new-instance v1, Lorg/ejml/ops/FMonoid;

    new-instance v3, Lorg/ejml/ops/FSemiRings$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lorg/ejml/ops/FSemiRings$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/ejml/ops/FMonoid;-><init>(FLorg/ejml/ops/FOperatorBinary;)V

    sput-object v1, Lorg/ejml/ops/FSemiRings;->SECOND:Lorg/ejml/ops/FMonoid;

    .line 50
    new-instance v2, Lorg/ejml/ops/FSemiRing;

    sget-object v3, Lorg/ejml/ops/FMonoids;->MIN:Lorg/ejml/ops/FMonoid;

    invoke-direct {v2, v3, v0}, Lorg/ejml/ops/FSemiRing;-><init>(Lorg/ejml/ops/FMonoid;Lorg/ejml/ops/FMonoid;)V

    sput-object v2, Lorg/ejml/ops/FSemiRings;->MIN_FIRST:Lorg/ejml/ops/FSemiRing;

    .line 51
    new-instance v2, Lorg/ejml/ops/FSemiRing;

    sget-object v3, Lorg/ejml/ops/FMonoids;->MIN:Lorg/ejml/ops/FMonoid;

    invoke-direct {v2, v3, v1}, Lorg/ejml/ops/FSemiRing;-><init>(Lorg/ejml/ops/FMonoid;Lorg/ejml/ops/FMonoid;)V

    sput-object v2, Lorg/ejml/ops/FSemiRings;->MIN_SECOND:Lorg/ejml/ops/FSemiRing;

    .line 52
    new-instance v2, Lorg/ejml/ops/FSemiRing;

    sget-object v3, Lorg/ejml/ops/FMonoids;->MAX:Lorg/ejml/ops/FMonoid;

    invoke-direct {v2, v3, v0}, Lorg/ejml/ops/FSemiRing;-><init>(Lorg/ejml/ops/FMonoid;Lorg/ejml/ops/FMonoid;)V

    sput-object v2, Lorg/ejml/ops/FSemiRings;->MAX_FIRST:Lorg/ejml/ops/FSemiRing;

    .line 53
    new-instance v0, Lorg/ejml/ops/FSemiRing;

    sget-object v2, Lorg/ejml/ops/FMonoids;->MAX:Lorg/ejml/ops/FMonoid;

    invoke-direct {v0, v2, v1}, Lorg/ejml/ops/FSemiRing;-><init>(Lorg/ejml/ops/FMonoid;Lorg/ejml/ops/FMonoid;)V

    sput-object v0, Lorg/ejml/ops/FSemiRings;->MAX_SECOND:Lorg/ejml/ops/FSemiRing;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0(FF)F
    .locals 0

    return p0
.end method

.method static synthetic lambda$static$1(FF)F
    .locals 0

    return p1
.end method
