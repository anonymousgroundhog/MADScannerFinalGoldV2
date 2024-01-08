.class public final enum Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;
.super Ljava/lang/Enum;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FillRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

.field public static final enum EvenOdd:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

.field public static final enum NonZero:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;
    .locals 2

    .line 1127
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    filled-new-array {v0, v1}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1129
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    const-string v1, "NonZero"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    .line 1130
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    const-string v1, "EvenOdd"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    .line 1127
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;->$values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;
    .locals 1

    .line 1127
    const-class v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;
    .locals 1

    .line 1127
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v0}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    return-object v0
.end method
