.class abstract Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SvgElementBase"
.end annotation


# instance fields
.field baseStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

.field classNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field id:Ljava/lang/String;

.field spacePreserve:Ljava/lang/Boolean;

.field style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1503
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;-><init>()V

    const/4 v0, 0x0

    .line 1505
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    .line 1506
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    .line 1507
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    .line 1508
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    .line 1509
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method abstract getNodeName()Ljava/lang/String;
.end method
