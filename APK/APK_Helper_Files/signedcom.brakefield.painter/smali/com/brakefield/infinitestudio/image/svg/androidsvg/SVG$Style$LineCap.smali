.class public final enum Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;
.super Ljava/lang/Enum;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineCap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

.field public static final enum Butt:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

.field public static final enum Round:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

.field public static final enum Square:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;
    .locals 3

    .line 1133
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;->Butt:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;->Round:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;->Square:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    filled-new-array {v0, v1, v2}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1135
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    const-string v1, "Butt"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;->Butt:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    .line 1136
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    const-string v1, "Round"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;->Round:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    .line 1137
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    const-string v1, "Square"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;->Square:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    .line 1133
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;->$values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;
    .locals 1

    .line 1133
    const-class v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;
    .locals 1

    .line 1133
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    invoke-virtual {v0}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    return-object v0
.end method
