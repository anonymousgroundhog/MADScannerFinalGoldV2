.class abstract Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalElement;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;
.source "SVG.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SvgConditionalElement"
.end annotation


# instance fields
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

    .line 1539
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;-><init>()V

    const/4 v0, 0x0

    .line 1541
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalElement;->requiredFeatures:Ljava/util/Set;

    .line 1542
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalElement;->requiredExtensions:Ljava/lang/String;

    .line 1543
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalElement;->systemLanguage:Ljava/util/Set;

    .line 1544
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalElement;->requiredFormats:Ljava/util/Set;

    .line 1545
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalElement;->requiredFonts:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getRequiredExtensions()Ljava/lang/String;
    .locals 1

    .line 1554
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalElement;->requiredExtensions:Ljava/lang/String;

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

    .line 1550
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalElement;->requiredFeatures:Ljava/util/Set;

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

    .line 1566
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalElement;->requiredFonts:Ljava/util/Set;

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

    .line 1562
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalElement;->requiredFormats:Ljava/util/Set;

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

    .line 1558
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalElement;->systemLanguage:Ljava/util/Set;

    return-object v0
.end method

.method public setRequiredExtensions(Ljava/lang/String;)V
    .locals 0

    .line 1552
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalElement;->requiredExtensions:Ljava/lang/String;

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

    .line 1548
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalElement;->requiredFeatures:Ljava/util/Set;

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

    .line 1564
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalElement;->requiredFonts:Ljava/util/Set;

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

    .line 1560
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalElement;->requiredFormats:Ljava/util/Set;

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

    .line 1556
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalElement;->systemLanguage:Ljava/util/Set;

    return-void
.end method
