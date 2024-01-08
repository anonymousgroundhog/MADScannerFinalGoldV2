.class abstract Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;
.source "SVG.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;
.implements Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SvgConditionalContainer"
.end annotation


# instance fields
.field children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;",
            ">;"
        }
    .end annotation
.end field

.field requiredExtensions:Ljava/lang/String;

.field requiredFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field requiredFonts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field requiredFormats:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field systemLanguage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1577
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;-><init>()V

    .line 1579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    const/4 v0, 0x0

    .line 1581
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;->requiredFeatures:Ljava/util/Set;

    .line 1582
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;->requiredExtensions:Ljava/lang/String;

    .line 1583
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;->systemLanguage:Ljava/util/Set;

    .line 1584
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;->requiredFormats:Ljava/util/Set;

    .line 1585
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;->requiredFonts:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1590
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;",
            ">;"
        }
    .end annotation

    .line 1588
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    return-object v0
.end method

.method public getRequiredExtensions()Ljava/lang/String;
    .locals 1

    .line 1599
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;->requiredExtensions:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredFeatures()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1595
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;->requiredFeatures:Ljava/util/Set;

    return-object v0
.end method

.method public getRequiredFonts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1611
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;->requiredFonts:Ljava/util/Set;

    return-object v0
.end method

.method public getRequiredFormats()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1607
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;->requiredFormats:Ljava/util/Set;

    return-object v0
.end method

.method public getSystemLanguage()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public setRequiredExtensions(Ljava/lang/String;)V
    .locals 0

    .line 1597
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;->requiredExtensions:Ljava/lang/String;

    return-void
.end method

.method public setRequiredFeatures(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1593
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;->requiredFeatures:Ljava/util/Set;

    return-void
.end method

.method public setRequiredFonts(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1609
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;->requiredFonts:Ljava/util/Set;

    return-void
.end method

.method public setRequiredFormats(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1605
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;->requiredFormats:Ljava/util/Set;

    return-void
.end method

.method public setSystemLanguage(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1601
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;->systemLanguage:Ljava/util/Set;

    return-void
.end method
