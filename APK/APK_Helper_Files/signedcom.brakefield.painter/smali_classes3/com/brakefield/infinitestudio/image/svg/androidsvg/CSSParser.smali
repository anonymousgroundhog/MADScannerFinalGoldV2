.class public Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Attrib;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;
    }
.end annotation


# static fields
.field private static final CLASS:Ljava/lang/String; = "class"

.field static final CSS_MIME_TYPE:Ljava/lang/String; = "text/css"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final TAG:Ljava/lang/String; = "AndroidSVG CSSParser"


# instance fields
.field private deviceMediaType:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

.field private inMediaRule:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->deviceMediaType:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->inMediaRule:Z

    .line 282
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->screen:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->deviceMediaType:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    return-void
.end method

.method constructor <init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;)V
    .locals 1

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->inMediaRule:Z

    .line 288
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->deviceMediaType:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    return-void
.end method

.method private static getChildPosition(Ljava/util/List;ILcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;",
            ")I"
        }
    .end annotation

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    .line 1045
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    if-eq p0, p1, :cond_1

    return v0

    .line 1048
    :cond_1
    iget-object p0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    if-ne v1, p2, :cond_2

    return p1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method static mediaMatches(Ljava/lang/String;Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;)Z
    .locals 1

    .line 303
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 305
    invoke-static {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->parseMediaList(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object p0

    .line 306
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->mediaMatches(Ljava/util/List;Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;)Z

    move-result p0

    return p0
.end method

.method private static mediaMatches(Ljava/util/List;Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;",
            ">;",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;",
            ")Z"
        }
    .end annotation

    .line 698
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    .line 699
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->all:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    if-eq v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private parseAtRule(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;
        }
    .end annotation

    .line 728
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 729
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    if-eqz v0, :cond_b

    .line 732
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->inMediaRule:Z

    const-string v2, "Invalid @media rule: expected \'}\' at end of rule set"

    if-nez v1, :cond_3

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 734
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->parseMediaList(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x7b

    .line 735
    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 738
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 739
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->deviceMediaType:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->mediaMatches(Ljava/util/List;Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 740
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->inMediaRule:Z

    .line 741
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->parseRuleset(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->addAll(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;)V

    const/4 p1, 0x0

    .line 742
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->inMediaRule:Z

    goto :goto_0

    .line 744
    :cond_0
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->parseRuleset(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;

    .line 747
    :goto_0
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result p1

    if-nez p1, :cond_a

    const/16 p1, 0x7d

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_2

    .line 748
    :cond_1
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;

    invoke-direct {p1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 736
    :cond_2
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;

    const-string p2, "Invalid @media rule: missing rule set"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 751
    :cond_3
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->inMediaRule:Z

    if-nez v1, :cond_9

    const-string v1, "import"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 753
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextURL()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 755
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextCSSString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_8

    .line 759
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 760
    invoke-static {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->parseMediaList(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v1

    .line 762
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v3, 0x3b

    invoke-virtual {p2, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 763
    :cond_5
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;

    invoke-direct {p1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 765
    :cond_6
    :goto_1
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getFileResolver()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGExternalFileResolver;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->deviceMediaType:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->mediaMatches(Ljava/util/List;Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 766
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;->getFileResolver()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGExternalFileResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGExternalFileResolver;->resolveCSSStyleSheet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 769
    :cond_7
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->parse(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->addAll(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;)V

    goto :goto_2

    .line 757
    :cond_8
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;

    const-string p2, "Invalid @import rule: expected string or url()"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string p1, "Ignoring @%s rule"

    .line 776
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 777
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->skipAtRule(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;)V

    .line 779
    :cond_a
    :goto_2
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    return-void

    .line 731
    :cond_b
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;

    const-string p2, "Invalid \'@\' rule"

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parseClassAttribute(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 928
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 931
    :goto_0
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 933
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    .line 937
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 938
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private parseDeclarations(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;
        }
    .end annotation

    .line 890
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;-><init>()V

    .line 893
    :cond_0
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 894
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    const/16 v2, 0x3a

    .line 895
    invoke-virtual {p1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 897
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 898
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextPropertyValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 902
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    const/16 v3, 0x21

    .line 903
    invoke-virtual {p1, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 904
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    const-string v3, "important"

    .line 905
    invoke-virtual {p1, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 909
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_0

    .line 906
    :cond_1
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;

    const/4 v0, 0x0

    sget-object v0, Lcom/google/api/client/extensions/android/http/tr/rffuYzZsQ;->EtAJxIqEeqtYW:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/16 v3, 0x3b

    .line 911
    invoke-virtual {p1, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    .line 913
    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;->processStyleProperty(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 915
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x7d

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    return-object v0

    .line 900
    :cond_4
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;

    const-string v0, "Expected property value"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 896
    :cond_5
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;

    const-string v0, "Expected \':\'"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parseMediaList(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;",
            ")",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;",
            ">;"
        }
    .end annotation

    .line 708
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 709
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 710
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextWord()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 714
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :catch_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipCommaWhitespace()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private parseRule(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;
        }
    .end annotation

    .line 837
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->parseSelectorGroup(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 838
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x7b

    .line 840
    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 842
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 843
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->parseDeclarations(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    move-result-object v1

    .line 844
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 845
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;

    .line 846
    new-instance v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;

    invoke-direct {v2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;)V

    invoke-virtual {p1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->add(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 841
    :cond_1
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;

    const/4 p2, 0x0

    sget-object p2, Lcom/google/android/exoplayer2/source/smoothstreaming/dG/norGc;->ZuXxnhcKQZFv:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private parseRuleset(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;
    .locals 3

    .line 804
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;-><init>()V

    .line 807
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "<!--"

    .line 809
    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "-->"

    .line 811
    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x40

    .line 814
    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 815
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->parseAtRule(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;)V

    goto :goto_0

    .line 818
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->parseRule(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;)Z

    move-result v1
    :try_end_0
    .catch Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    goto :goto_0

    :catch_0
    move-exception p1

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CSS parser terminated early due to error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AndroidSVG CSSParser"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method private parseSelectorGroup(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;",
            ")",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;
        }
    .end annotation

    .line 862
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 865
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 866
    new-instance v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;

    invoke-direct {v2, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$1;)V

    .line 868
    :goto_0
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 870
    invoke-virtual {p1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextSimpleSelector(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 873
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipCommaWhitespace()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 875
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    new-instance v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;

    invoke-direct {v2, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$1;)V

    goto :goto_0

    .line 881
    :cond_2
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 882
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method private static ruleMatch(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;",
            "I",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;",
            ")Z"
        }
    .end annotation

    .line 974
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->get(I)Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;

    move-result-object v0

    .line 975
    invoke-static {v0, p2, p3, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->selectorMatch(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 979
    :cond_0
    iget-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    sget-object v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_4

    if-nez p1, :cond_1

    return v4

    :cond_1
    :goto_0
    if-ltz p3, :cond_3

    add-int/lit8 p4, p1, -0x1

    .line 985
    invoke-static {p0, p4, p2, p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result p4

    if-eqz p4, :cond_2

    return v4

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_3
    return v2

    .line 991
    :cond_4
    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;->CHILD:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    if-ne v0, v1, :cond_5

    sub-int/2addr p1, v4

    .line 993
    invoke-static {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result p0

    return p0

    .line 997
    :cond_5
    invoke-static {p2, p3, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->getChildPosition(Ljava/util/List;ILcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)I

    move-result v0

    if-gtz v0, :cond_6

    return v2

    .line 1000
    :cond_6
    iget-object p4, p4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object p4

    sub-int/2addr v0, v4

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;

    sub-int/2addr p1, v4

    .line 1001
    invoke-static {p0, p1, p2, p3, p4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->ruleMatch(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)Z

    move-result p0

    return p0
.end method

.method static ruleMatch(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)Z
    .locals 5

    .line 951
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 952
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 954
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 955
    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    goto :goto_0

    .line 958
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 961
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 962
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->get(I)Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;

    move-result-object p0

    invoke-static {p0, v0, v1, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->selectorMatch(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)Z

    move-result p0

    return p0

    .line 966
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {p0, v2, v0, v1, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->ruleMatch(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)Z

    move-result p0

    return p0
.end method

.method private static ruleMatchOnAncestors(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;",
            "I",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;",
            ">;I)Z"
        }
    .end annotation

    .line 1008
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->get(I)Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;

    move-result-object v0

    .line 1009
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;

    .line 1011
    invoke-static {v0, p2, p3, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->selectorMatch(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 1015
    :cond_0
    iget-object v2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    const/4 v5, 0x1

    if-ne v2, v4, :cond_3

    if-nez p1, :cond_1

    return v5

    :cond_1
    if-lez p3, :cond_2

    add-int/lit8 v0, p1, -0x1

    add-int/lit8 p3, p3, -0x1

    .line 1021
    invoke-static {p0, v0, p2, p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v5

    :cond_2
    return v3

    .line 1026
    :cond_3
    iget-object v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;->CHILD:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    if-ne v0, v2, :cond_4

    sub-int/2addr p1, v5

    sub-int/2addr p3, v5

    .line 1028
    invoke-static {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result p0

    return p0

    .line 1032
    :cond_4
    invoke-static {p2, p3, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->getChildPosition(Ljava/util/List;ILcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)I

    move-result v0

    if-gtz v0, :cond_5

    return v3

    .line 1035
    :cond_5
    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->parent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;

    invoke-interface {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v1

    sub-int/2addr v0, v5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;

    sub-int/2addr p1, v5

    .line 1036
    invoke-static {p0, p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->ruleMatch(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)Z

    move-result p0

    return p0
.end method

.method private static selectorMatch(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;",
            ")Z"
        }
    .end annotation

    .line 1061
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->getNodeName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 1069
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Attrib;

    .line 1071
    iget-object v3, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Attrib;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "class"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 1077
    :cond_2
    iget-object v3, p3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    if-nez v3, :cond_3

    return v1

    .line 1079
    :cond_3
    iget-object v3, p3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    iget-object v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 1073
    :cond_4
    iget-object v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    iget-object v3, p3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 1090
    :cond_5
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 1091
    iget-object p0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "first-child"

    .line 1092
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1093
    invoke-static {p1, p2, p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->getChildPosition(Ljava/util/List;ILcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;)I

    move-result v0

    if-eqz v0, :cond_6

    :cond_7
    return v1

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method private skipAtRule(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;)V
    .locals 3

    const/4 v0, 0x0

    .line 787
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 789
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v2, 0x7b

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    :cond_3
    return-void
.end method

.method private static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "AndroidSVG CSSParser"

    .line 315
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method parse(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;
    .locals 1

    .line 294
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 297
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;->parseRuleset(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;

    move-result-object p1

    return-object p1
.end method
