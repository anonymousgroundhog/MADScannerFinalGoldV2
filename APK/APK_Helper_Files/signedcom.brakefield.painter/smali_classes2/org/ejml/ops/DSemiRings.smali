.class public final Lorg/ejml/ops/DSemiRings;
.super Ljava/lang/Object;
.source "DSemiRings.java"


# static fields
.field public static final AND_OR:Lorg/ejml/ops/DSemiRing;

.field private static final FIRST:Lorg/ejml/ops/DMonoid;

.field public static final MAX_FIRST:Lorg/ejml/ops/DSemiRing;

.field public static final MAX_MIN:Lorg/ejml/ops/DSemiRing;

.field public static final MAX_PLUS:Lorg/ejml/ops/DSemiRing;

.field public static final MAX_SECOND:Lorg/ejml/ops/DSemiRing;

.field public static final MAX_TIMES:Lorg/ejml/ops/DSemiRing;

.field public static final MIN_FIRST:Lorg/ejml/ops/DSemiRing;

.field public static final MIN_MAX:Lorg/ejml/ops/DSemiRing;

.field public static final MIN_PLUS:Lorg/ejml/ops/DSemiRing;

.field public static final MIN_SECOND:Lorg/ejml/ops/DSemiRing;

.field public static final MIN_TIMES:Lorg/ejml/ops/DSemiRing;

.field public static final OR_AND:Lorg/ejml/ops/DSemiRing;

.field public static final PLUS_MIN:Lorg/ejml/ops/DSemiRing;

.field public static final PLUS_TIMES:Lorg/ejml/ops/DSemiRing;

.field private static final SECOND:Lorg/ejml/ops/DMonoid;

.field public static final XNOR_OR:Lorg/ejml/ops/DSemiRing;

.field public static final XOR_AND:Lorg/ejml/ops/DSemiRing;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lorg/ejml/ops/DSemiRing;

    sget-object v1, Lorg/ejml/ops/DMonoids;->PLUS:Lorg/ejml/ops/DMonoid;

    sget-object v2, Lorg/ejml/ops/DMonoids;->TIMES:Lorg/ejml/ops/DMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/DSemiRing;-><init>(Lorg/ejml/ops/DMonoid;Lorg/ejml/ops/DMonoid;)V

    sput-object v0, Lorg/ejml/ops/DSemiRings;->PLUS_TIMES:Lorg/ejml/ops/DSemiRing;

    .line 30
    new-instance v0, Lorg/ejml/ops/DSemiRing;

    sget-object v1, Lorg/ejml/ops/DMonoids;->MIN:Lorg/ejml/ops/DMonoid;

    sget-object v2, Lorg/ejml/ops/DMonoids;->PLUS:Lorg/ejml/ops/DMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/DSemiRing;-><init>(Lorg/ejml/ops/DMonoid;Lorg/ejml/ops/DMonoid;)V

    sput-object v0, Lorg/ejml/ops/DSemiRings;->MIN_PLUS:Lorg/ejml/ops/DSemiRing;

    .line 31
    new-instance v0, Lorg/ejml/ops/DSemiRing;

    sget-object v1, Lorg/ejml/ops/DMonoids;->MAX:Lorg/ejml/ops/DMonoid;

    sget-object v2, Lorg/ejml/ops/DMonoids;->PLUS:Lorg/ejml/ops/DMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/DSemiRing;-><init>(Lorg/ejml/ops/DMonoid;Lorg/ejml/ops/DMonoid;)V

    sput-object v0, Lorg/ejml/ops/DSemiRings;->MAX_PLUS:Lorg/ejml/ops/DSemiRing;

    .line 32
    new-instance v0, Lorg/ejml/ops/DSemiRing;

    sget-object v1, Lorg/ejml/ops/DMonoids;->MIN:Lorg/ejml/ops/DMonoid;

    sget-object v2, Lorg/ejml/ops/DMonoids;->TIMES:Lorg/ejml/ops/DMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/DSemiRing;-><init>(Lorg/ejml/ops/DMonoid;Lorg/ejml/ops/DMonoid;)V

    sput-object v0, Lorg/ejml/ops/DSemiRings;->MIN_TIMES:Lorg/ejml/ops/DSemiRing;

    .line 33
    new-instance v0, Lorg/ejml/ops/DSemiRing;

    sget-object v1, Lorg/ejml/ops/DMonoids;->MIN:Lorg/ejml/ops/DMonoid;

    sget-object v2, Lorg/ejml/ops/DMonoids;->MAX:Lorg/ejml/ops/DMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/DSemiRing;-><init>(Lorg/ejml/ops/DMonoid;Lorg/ejml/ops/DMonoid;)V

    sput-object v0, Lorg/ejml/ops/DSemiRings;->MIN_MAX:Lorg/ejml/ops/DSemiRing;

    .line 34
    new-instance v0, Lorg/ejml/ops/DSemiRing;

    sget-object v1, Lorg/ejml/ops/DMonoids;->MAX:Lorg/ejml/ops/DMonoid;

    sget-object v2, Lorg/ejml/ops/DMonoids;->MIN:Lorg/ejml/ops/DMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/DSemiRing;-><init>(Lorg/ejml/ops/DMonoid;Lorg/ejml/ops/DMonoid;)V

    sput-object v0, Lorg/ejml/ops/DSemiRings;->MAX_MIN:Lorg/ejml/ops/DSemiRing;

    .line 35
    new-instance v0, Lorg/ejml/ops/DSemiRing;

    sget-object v1, Lorg/ejml/ops/DMonoids;->MAX:Lorg/ejml/ops/DMonoid;

    sget-object v2, Lorg/ejml/ops/DMonoids;->TIMES:Lorg/ejml/ops/DMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/DSemiRing;-><init>(Lorg/ejml/ops/DMonoid;Lorg/ejml/ops/DMonoid;)V

    sput-object v0, Lorg/ejml/ops/DSemiRings;->MAX_TIMES:Lorg/ejml/ops/DSemiRing;

    .line 36
    new-instance v0, Lorg/ejml/ops/DSemiRing;

    sget-object v1, Lorg/ejml/ops/DMonoids;->PLUS:Lorg/ejml/ops/DMonoid;

    sget-object v2, Lorg/ejml/ops/DMonoids;->MIN:Lorg/ejml/ops/DMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/DSemiRing;-><init>(Lorg/ejml/ops/DMonoid;Lorg/ejml/ops/DMonoid;)V

    sput-object v0, Lorg/ejml/ops/DSemiRings;->PLUS_MIN:Lorg/ejml/ops/DSemiRing;

    .line 38
    new-instance v0, Lorg/ejml/ops/DSemiRing;

    sget-object v1, Lorg/ejml/ops/DMonoids;->OR:Lorg/ejml/ops/DMonoid;

    sget-object v2, Lorg/ejml/ops/DMonoids;->AND:Lorg/ejml/ops/DMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/DSemiRing;-><init>(Lorg/ejml/ops/DMonoid;Lorg/ejml/ops/DMonoid;)V

    sput-object v0, Lorg/ejml/ops/DSemiRings;->OR_AND:Lorg/ejml/ops/DSemiRing;

    .line 39
    new-instance v0, Lorg/ejml/ops/DSemiRing;

    sget-object v1, Lorg/ejml/ops/DMonoids;->AND:Lorg/ejml/ops/DMonoid;

    sget-object v2, Lorg/ejml/ops/DMonoids;->OR:Lorg/ejml/ops/DMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/DSemiRing;-><init>(Lorg/ejml/ops/DMonoid;Lorg/ejml/ops/DMonoid;)V

    sput-object v0, Lorg/ejml/ops/DSemiRings;->AND_OR:Lorg/ejml/ops/DSemiRing;

    .line 40
    new-instance v0, Lorg/ejml/ops/DSemiRing;

    sget-object v1, Lorg/ejml/ops/DMonoids;->XOR:Lorg/ejml/ops/DMonoid;

    sget-object v2, Lorg/ejml/ops/DMonoids;->AND:Lorg/ejml/ops/DMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/DSemiRing;-><init>(Lorg/ejml/ops/DMonoid;Lorg/ejml/ops/DMonoid;)V

    sput-object v0, Lorg/ejml/ops/DSemiRings;->XOR_AND:Lorg/ejml/ops/DSemiRing;

    .line 41
    new-instance v0, Lorg/ejml/ops/DSemiRing;

    sget-object v1, Lorg/ejml/ops/DMonoids;->XNOR:Lorg/ejml/ops/DMonoid;

    sget-object v2, Lorg/ejml/ops/DMonoids;->OR:Lorg/ejml/ops/DMonoid;

    invoke-direct {v0, v1, v2}, Lorg/ejml/ops/DSemiRing;-><init>(Lorg/ejml/ops/DMonoid;Lorg/ejml/ops/DMonoid;)V

    sput-object v0, Lorg/ejml/ops/DSemiRings;->XNOR_OR:Lorg/ejml/ops/DSemiRing;

    .line 44
    new-instance v0, Lorg/ejml/ops/DMonoid;

    new-instance v1, Lorg/ejml/ops/DSemiRings$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/ejml/ops/DSemiRings$$ExternalSyntheticLambda0;-><init>()V

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v2, v3, v1}, Lorg/ejml/ops/DMonoid;-><init>(DLorg/ejml/ops/DOperatorBinary;)V

    sput-object v0, Lorg/ejml/ops/DSemiRings;->FIRST:Lorg/ejml/ops/DMonoid;

    .line 45
    new-instance v1, Lorg/ejml/ops/DMonoid;

    new-instance v4, Lorg/ejml/ops/DSemiRings$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lorg/ejml/ops/DSemiRings$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lorg/ejml/ops/DMonoid;-><init>(DLorg/ejml/ops/DOperatorBinary;)V

    sput-object v1, Lorg/ejml/ops/DSemiRings;->SECOND:Lorg/ejml/ops/DMonoid;

    .line 48
    new-instance v2, Lorg/ejml/ops/DSemiRing;

    sget-object v3, Lorg/ejml/ops/DMonoids;->MIN:Lorg/ejml/ops/DMonoid;

    invoke-direct {v2, v3, v0}, Lorg/ejml/ops/DSemiRing;-><init>(Lorg/ejml/ops/DMonoid;Lorg/ejml/ops/DMonoid;)V

    sput-object v2, Lorg/ejml/ops/DSemiRings;->MIN_FIRST:Lorg/ejml/ops/DSemiRing;

    .line 49
    new-instance v2, Lorg/ejml/ops/DSemiRing;

    sget-object v3, Lorg/ejml/ops/DMonoids;->MIN:Lorg/ejml/ops/DMonoid;

    invoke-direct {v2, v3, v1}, Lorg/ejml/ops/DSemiRing;-><init>(Lorg/ejml/ops/DMonoid;Lorg/ejml/ops/DMonoid;)V

    sput-object v2, Lorg/ejml/ops/DSemiRings;->MIN_SECOND:Lorg/ejml/ops/DSemiRing;

    .line 50
    new-instance v2, Lorg/ejml/ops/DSemiRing;

    sget-object v3, Lorg/ejml/ops/DMonoids;->MAX:Lorg/ejml/ops/DMonoid;

    invoke-direct {v2, v3, v0}, Lorg/ejml/ops/DSemiRing;-><init>(Lorg/ejml/ops/DMonoid;Lorg/ejml/ops/DMonoid;)V

    sput-object v2, Lorg/ejml/ops/DSemiRings;->MAX_FIRST:Lorg/ejml/ops/DSemiRing;

    .line 51
    new-instance v0, Lorg/ejml/ops/DSemiRing;

    sget-object v2, Lorg/ejml/ops/DMonoids;->MAX:Lorg/ejml/ops/DMonoid;

    invoke-direct {v0, v2, v1}, Lorg/ejml/ops/DSemiRing;-><init>(Lorg/ejml/ops/DMonoid;Lorg/ejml/ops/DMonoid;)V

    sput-object v0, Lorg/ejml/ops/DSemiRings;->MAX_SECOND:Lorg/ejml/ops/DSemiRing;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0(DD)D
    .locals 0

    return-wide p0
.end method

.method static synthetic lambda$static$1(DD)D
    .locals 0

    return-wide p2
.end method
