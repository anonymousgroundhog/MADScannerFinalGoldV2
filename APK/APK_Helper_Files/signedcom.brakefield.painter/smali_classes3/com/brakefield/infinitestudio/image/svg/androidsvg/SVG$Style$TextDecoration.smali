.class public final enum Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;
.super Ljava/lang/Enum;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextDecoration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

.field public static final enum Blink:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

.field public static final enum LineThrough:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

.field public static final enum None:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

.field public static final enum Overline:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

.field public static final enum Underline:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;
    .locals 5

    .line 1161
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->None:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->Overline:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    sget-object v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->Blink:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1163
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->None:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    .line 1164
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    const-string v1, "Underline"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    .line 1165
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    const-string v1, "Overline"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->Overline:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    .line 1166
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    const-string v1, "LineThrough"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    .line 1167
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    const-string v1, "Blink"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->Blink:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    .line 1161
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->$values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;
    .locals 1

    .line 1161
    const-class v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;
    .locals 1

    .line 1161
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    invoke-virtual {v0}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    return-object v0
.end method
