.class final enum Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;
.super Ljava/lang/Enum;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GradientSpread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

.field public static final enum pad:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

.field public static final enum reflect:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

.field public static final enum repeat:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;
    .locals 3

    .line 124
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;->pad:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;->reflect:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;->repeat:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    filled-new-array {v0, v1, v2}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 127
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    const-string v1, "pad"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;->pad:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    .line 128
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    const-string v1, "reflect"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;->reflect:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    .line 129
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    const-string v1, "repeat"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;->repeat:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    .line 124
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;->$values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;
    .locals 1

    .line 124
    const-class v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;
    .locals 1

    .line 124
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    invoke-virtual {v0}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientSpread;

    return-object v0
.end method
