.class public final enum Lorg/ejml/sparse/FillReducing;
.super Ljava/lang/Enum;
.source "FillReducing.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ejml/sparse/FillReducing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ejml/sparse/FillReducing;

.field public static final enum IDENTITY:Lorg/ejml/sparse/FillReducing;

.field public static final enum NONE:Lorg/ejml/sparse/FillReducing;

.field public static final enum RANDOM:Lorg/ejml/sparse/FillReducing;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Lorg/ejml/sparse/FillReducing;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ejml/sparse/FillReducing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ejml/sparse/FillReducing;->NONE:Lorg/ejml/sparse/FillReducing;

    .line 34
    new-instance v1, Lorg/ejml/sparse/FillReducing;

    const-string v2, "RANDOM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/ejml/sparse/FillReducing;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/ejml/sparse/FillReducing;->RANDOM:Lorg/ejml/sparse/FillReducing;

    .line 38
    new-instance v2, Lorg/ejml/sparse/FillReducing;

    const/4 v3, 0x0

    sget-object v3, Landroidx/core/database/hzA/JUetN;->AWBiKAKQOJSD:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/ejml/sparse/FillReducing;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/ejml/sparse/FillReducing;->IDENTITY:Lorg/ejml/sparse/FillReducing;

    .line 26
    filled-new-array {v0, v1, v2}, [Lorg/ejml/sparse/FillReducing;

    move-result-object v0

    sput-object v0, Lorg/ejml/sparse/FillReducing;->$VALUES:[Lorg/ejml/sparse/FillReducing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ejml/sparse/FillReducing;
    .locals 1

    .line 26
    const-class v0, Lorg/ejml/sparse/FillReducing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/ejml/sparse/FillReducing;

    return-object p0
.end method

.method public static values()[Lorg/ejml/sparse/FillReducing;
    .locals 1

    .line 26
    sget-object v0, Lorg/ejml/sparse/FillReducing;->$VALUES:[Lorg/ejml/sparse/FillReducing;

    invoke-virtual {v0}, [Lorg/ejml/sparse/FillReducing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ejml/sparse/FillReducing;

    return-object v0
.end method
