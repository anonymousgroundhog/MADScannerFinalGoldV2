.class public final enum Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;
.super Ljava/lang/Enum;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VectorEffect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

.field public static final enum NonScalingStroke:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

.field public static final enum None:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;
    .locals 2

    .line 1176
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;->None:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    filled-new-array {v0, v1}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1178
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;->None:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    .line 1179
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    const/4 v1, 0x0

    sget-object v1, Lcom/infinite/core/MTx/eQuC;->HIv:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    .line 1176
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;->$values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;
    .locals 1

    .line 1176
    const-class v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;
    .locals 1

    .line 1176
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    invoke-virtual {v0}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    return-object v0
.end method
