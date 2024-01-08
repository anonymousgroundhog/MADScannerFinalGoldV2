.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPositionedContainer;
.source "SVG.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextChild;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TSpan"
.end annotation


# instance fields
.field private textRoot:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1815
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPositionedContainer;-><init>()V

    return-void
.end method


# virtual methods
.method getNodeName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "tspan"

    return-object v0
.end method

.method public getTextRoot()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;
    .locals 1

    .line 1822
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->textRoot:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;

    return-object v0
.end method

.method public setTextRoot(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;)V
    .locals 0

    .line 1820
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TSpan;->textRoot:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;

    return-void
.end method
