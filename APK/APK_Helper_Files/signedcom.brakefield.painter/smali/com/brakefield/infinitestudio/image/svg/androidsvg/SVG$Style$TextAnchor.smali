.class public final enum Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;
.super Ljava/lang/Enum;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextAnchor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

.field public static final enum End:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

.field public static final enum Middle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

.field public static final enum Start:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;
    .locals 3

    .line 1154
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->End:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    filled-new-array {v0, v1, v2}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1156
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    const/4 v1, 0x0

    sget-object v1, Landroidx/navigation/ui/zZ/NxTXUJn;->BkRcEQC:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    .line 1157
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    const-string v1, "Middle"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    .line 1158
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    const-string v1, "End"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->End:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    .line 1154
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->$values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;
    .locals 1

    .line 1154
    const-class v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;
    .locals 1

    .line 1154
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    invoke-virtual {v0}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    return-object v0
.end method
