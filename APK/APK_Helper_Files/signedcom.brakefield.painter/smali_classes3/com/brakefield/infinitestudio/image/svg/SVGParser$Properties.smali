.class Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Properties"
.end annotation


# instance fields
.field private atts:Lorg/xml/sax/Attributes;

.field id:Ljava/lang/String;

.field private styles:Lcom/brakefield/infinitestudio/image/svg/SVGParser$StyleSet;


# direct methods
.method private constructor <init>(Lorg/xml/sax/Attributes;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;",
            ">;)V"
        }
    .end annotation

    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 820
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->styles:Lcom/brakefield/infinitestudio/image/svg/SVGParser$StyleSet;

    .line 822
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->id:Ljava/lang/String;

    .line 825
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->atts:Lorg/xml/sax/Attributes;

    const-string/jumbo v1, "style"

    .line 826
    invoke-static {v1, p1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$200(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    .line 827
    invoke-static {v2, p1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$200(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    .line 828
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 830
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$StyleSet;

    invoke-direct {p1, v1, v0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$StyleSet;-><init>(Ljava/lang/String;Lcom/brakefield/infinitestudio/image/svg/SVGParser$1;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->styles:Lcom/brakefield/infinitestudio/image/svg/SVGParser$StyleSet;

    goto :goto_0

    .line 831
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 832
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;

    .line 833
    iget-object p2, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->styles:Lcom/brakefield/infinitestudio/image/svg/SVGParser$StyleSet;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->styles:Lcom/brakefield/infinitestudio/image/svg/SVGParser$StyleSet;

    .line 834
    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->atts:Lorg/xml/sax/Attributes;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->atts:Lorg/xml/sax/Attributes;

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/xml/sax/Attributes;Ljava/util/List;Lcom/brakefield/infinitestudio/image/svg/SVGParser$1;)V
    .locals 0

    .line 819
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;-><init>(Lorg/xml/sax/Attributes;Ljava/util/List;)V

    return-void
.end method

.method private rgb(III)I
    .locals 0

    .line 1057
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getAttr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->styles:Lcom/brakefield/infinitestudio/image/svg/SVGParser$StyleSet;

    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$StyleSet;->getStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 844
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->atts:Lorg/xml/sax/Attributes;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->access$200(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    .line 1070
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1075
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public getFloat(Ljava/lang/String;F)Ljava/lang/Float;
    .locals 0

    .line 1061
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1063
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getHex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7

    const-string v0, "%"

    const-string v1, ""

    .line 854
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    const-string v3, "#"

    .line 859
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 861
    :try_start_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v2

    .line 867
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 868
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    const-string v3, "rgb"

    .line 870
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_2
    const-string v3, "rgb("

    .line 872
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, ")"

    .line 873
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    .line 874
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 876
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    .line 877
    aget-object p1, v3, v6

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 878
    aget-object v4, v3, v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 879
    aget-object v3, v3, v5

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    mul-float/2addr v4, v1

    float-to-int v3, v4

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 880
    invoke-static {p1, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    .line 881
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 883
    :cond_2
    aget-object p1, v3, v6

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 884
    aget-object v0, v3, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 885
    aget-object v1, v3, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 886
    invoke-static {p1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    .line 887
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    return-object v2

    .line 893
    :cond_3
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->tryColorKeywords(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 850
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tryColorKeywords(Ljava/lang/String;)I
    .locals 16

    move-object/from16 v0, p0

    .line 902
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aliceblue"

    .line 904
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xf8

    const/16 v4, 0xf0

    const/16 v5, 0xff

    if-nez v2, :cond_0

    invoke-direct {v0, v4, v3, v5}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_0
    const-string v2, "antiquewhite"

    .line 905
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/16 v6, 0xfa

    if-nez v2, :cond_1

    const/16 v1, 0xeb

    const/16 v2, 0xd7

    invoke-direct {v0, v6, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_1
    const-string v2, "aqua"

    .line 906
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/4 v7, 0x0

    if-nez v2, :cond_2

    invoke-direct {v0, v7, v5, v5}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_2
    const-string v2, "aquamarine"

    .line 907
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/16 v8, 0x7f

    if-nez v2, :cond_3

    const/16 v1, 0xd4

    invoke-direct {v0, v8, v5, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_3
    const-string v2, "azure"

    .line 908
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {v0, v4, v5, v5}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_4
    const/4 v2, 0x0

    sget-object v2, Lcom/brakefield/infinitestudio/color/YQ/FdgWfQQGDtjiVL;->tScUodZgOwZsFk:Ljava/lang/String;

    .line 909
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/16 v9, 0xdc

    const/16 v10, 0xf5

    if-nez v2, :cond_5

    invoke-direct {v0, v10, v10, v9}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_5
    const-string v2, "bisque"

    .line 910
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    const/16 v1, 0xe4

    const/16 v2, 0xc4

    invoke-direct {v0, v5, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_6
    const-string v2, "black"

    .line 911
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {v0, v7, v7, v7}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_7
    const-string v2, "blanchedalmond"

    .line 912
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/16 v11, 0xcd

    if-nez v2, :cond_8

    const/16 v1, 0xeb

    invoke-direct {v0, v5, v1, v11}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_8
    const-string v2, "blue"

    .line 913
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {v0, v7, v7, v5}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_9
    const-string v2, "blueviolet"

    .line 914
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_a

    const/16 v1, 0x2b

    const/16 v2, 0xe2

    const/16 v3, 0x8a

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_a
    const-string v2, "brown"

    .line 915
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    const/16 v1, 0x2a

    const/16 v2, 0x2a

    const/16 v3, 0xa5

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_b
    const-string v2, "burlywood"

    .line 916
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/16 v12, 0xde

    if-nez v2, :cond_c

    const/16 v1, 0xb8

    const/16 v2, 0x87

    invoke-direct {v0, v12, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_c
    const-string v2, "cadetblue"

    .line 917
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/16 v13, 0xa0

    if-nez v2, :cond_d

    const/16 v1, 0x5f

    const/16 v2, 0x9e

    invoke-direct {v0, v1, v2, v13}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_d
    const-string v2, "chartreuse"

    .line 918
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_e

    invoke-direct {v0, v8, v5, v7}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_e
    const-string v2, "chocolate"

    .line 919
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/16 v14, 0x69

    if-nez v2, :cond_f

    const/16 v1, 0xd2

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v14, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_f
    const-string v2, "coral"

    .line 920
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_10

    const/16 v1, 0x50

    invoke-direct {v0, v5, v8, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_10
    const-string v2, "cornflowerblue"

    .line 921
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    const/16 v1, 0x95

    const/16 v2, 0xed

    const/16 v3, 0x64

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_11
    const-string v2, "cornsilk"

    .line 922
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12

    invoke-direct {v0, v5, v3, v9}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_12
    const/4 v2, 0x0

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/DR/isVGwxqXMxDjgS;->WhBXyW:Ljava/lang/String;

    .line 923
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_13

    const/16 v1, 0x14

    const/16 v2, 0x3c

    invoke-direct {v0, v9, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_13
    const-string v2, "cyan"

    .line 924
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_14

    invoke-direct {v0, v7, v5, v5}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_14
    const-string v2, "darkblue"

    .line 925
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/16 v15, 0x8b

    if-nez v2, :cond_15

    invoke-direct {v0, v7, v7, v15}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_15
    const-string v2, "darkcyan"

    .line 926
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_16

    invoke-direct {v0, v7, v15, v15}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_16
    const-string v2, "darkgoldenrod"

    .line 927
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_17

    const/16 v1, 0x86

    const/16 v2, 0xb

    const/16 v3, 0xb8

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_17
    const-string v2, "darkgray"

    .line 928
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/16 v8, 0xa9

    if-nez v2, :cond_18

    invoke-direct {v0, v8, v8, v8}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_18
    const-string v2, "darkgreen"

    .line 929
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_19

    const/16 v1, 0x64

    invoke-direct {v0, v7, v1, v7}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_19
    const-string v2, "darkgrey"

    .line 930
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1a

    invoke-direct {v0, v8, v8, v8}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_1a
    const-string v2, "darkkhaki"

    .line 931
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1b

    const/16 v1, 0xb7

    const/16 v2, 0x6b

    const/16 v3, 0xbd

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_1b
    const-string v2, "darkmagenta"

    .line 932
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1c

    invoke-direct {v0, v15, v7, v15}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_1c
    const-string v2, "darkolivegreen"

    .line 933
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/16 v8, 0x2f

    if-nez v2, :cond_1d

    const/16 v1, 0x55

    const/16 v2, 0x6b

    invoke-direct {v0, v1, v2, v8}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_1d
    const-string v2, "darkorange"

    .line 934
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1e

    const/16 v1, 0x8c

    invoke-direct {v0, v5, v1, v7}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_1e
    const-string v2, "darkorchid"

    .line 935
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/16 v12, 0x32

    if-nez v2, :cond_1f

    const/16 v1, 0x99

    const/16 v2, 0xcc

    invoke-direct {v0, v1, v12, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_1f
    const-string v2, "darkred"

    .line 936
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_20

    invoke-direct {v0, v15, v7, v7}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_20
    const-string v2, "darksalmon"

    .line 937
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_21

    const/16 v1, 0x96

    const/16 v2, 0x7a

    const/16 v3, 0xe9

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_21
    const-string v2, "darkseagreen"

    .line 938
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_22

    const/16 v1, 0xbc

    const/16 v2, 0x8f

    const/16 v3, 0x8f

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_22
    const-string v2, "darkslateblue"

    .line 939
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_23

    const/16 v1, 0x48

    const/16 v2, 0x3d

    invoke-direct {v0, v1, v2, v15}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_23
    const-string v2, "darkslategray"

    .line 940
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_24

    const/16 v1, 0x4f

    const/16 v2, 0x4f

    invoke-direct {v0, v8, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_24
    const-string v2, "darkslategrey"

    .line 941
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_25

    const/16 v1, 0x4f

    const/16 v2, 0x4f

    invoke-direct {v0, v8, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_25
    const-string v2, "darkturquoise"

    .line 942
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_26

    const/16 v1, 0xce

    const/16 v2, 0xd1

    invoke-direct {v0, v7, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_26
    const-string v2, "darkviolet"

    .line 943
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/16 v12, 0xd3

    if-nez v2, :cond_27

    const/16 v1, 0x94

    invoke-direct {v0, v1, v7, v12}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_27
    const-string v2, "deeppink"

    .line 944
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_28

    const/16 v1, 0x14

    const/16 v2, 0x93

    invoke-direct {v0, v5, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_28
    const-string v2, "deepskyblue"

    .line 945
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_29

    const/16 v1, 0xbf

    invoke-direct {v0, v7, v1, v5}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_29
    const-string v2, "dimgray"

    .line 946
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2a

    invoke-direct {v0, v14, v14, v14}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_2a
    const-string v2, "dimgrey"

    .line 947
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2b

    invoke-direct {v0, v14, v14, v14}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_2b
    const-string v2, "dodgerblue"

    .line 948
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/16 v13, 0x90

    if-nez v2, :cond_2c

    const/16 v1, 0x1e

    invoke-direct {v0, v1, v13, v5}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_2c
    const-string v2, "firebrick"

    .line 949
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2d

    const/16 v1, 0x22

    const/16 v2, 0x22

    const/16 v3, 0xb2

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_2d
    const-string v2, "floralwhite"

    .line 950
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2e

    invoke-direct {v0, v5, v6, v4}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_2e
    const-string v2, "forestgreen"

    .line 951
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2f

    const/16 v1, 0x22

    const/16 v2, 0x22

    invoke-direct {v0, v1, v15, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_2f
    const-string v2, "fuchsia"

    .line 952
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_30

    invoke-direct {v0, v5, v7, v5}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_30
    const-string v2, "gainsboro"

    .line 953
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_31

    invoke-direct {v0, v9, v9, v9}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_31
    const-string v2, "ghostwhite"

    .line 954
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_32

    invoke-direct {v0, v3, v3, v5}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_32
    const-string v2, "gold"

    .line 955
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_33

    const/16 v1, 0xd7

    invoke-direct {v0, v5, v1, v7}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_33
    const-string v2, "goldenrod"

    .line 956
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_34

    const/16 v1, 0xa5

    const/16 v2, 0x20

    const/16 v3, 0xda

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_34
    const-string v2, "gray"

    .line 957
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x80

    if-nez v2, :cond_35

    invoke-direct {v0, v3, v3, v3}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_35
    const-string v2, "grey"

    .line 958
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_36

    invoke-direct {v0, v3, v3, v3}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_36
    const-string v2, "green"

    .line 959
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_37

    invoke-direct {v0, v7, v3, v7}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_37
    const-string v2, "greenyellow"

    .line 960
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_38

    const/16 v1, 0xad

    invoke-direct {v0, v1, v5, v8}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_38
    const-string v2, "honeydew"

    .line 961
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_39

    invoke-direct {v0, v4, v5, v4}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_39
    const-string v2, "hotpink"

    .line 962
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3a

    const/16 v1, 0xb4

    invoke-direct {v0, v5, v14, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_3a
    const-string v2, "indianred"

    .line 963
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3b

    const/16 v1, 0x5c

    const/16 v2, 0x5c

    invoke-direct {v0, v11, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_3b
    const-string v2, "indigo"

    .line 964
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3c

    const/16 v1, 0x4b

    const/16 v2, 0x82

    invoke-direct {v0, v1, v7, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_3c
    const-string v2, "ivory"

    .line 965
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3d

    invoke-direct {v0, v5, v5, v4}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_3d
    const-string v2, "khaki"

    .line 966
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/16 v8, 0xe6

    if-nez v2, :cond_3e

    const/16 v1, 0x8c

    invoke-direct {v0, v4, v8, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_3e
    const-string v2, "lavender"

    .line 967
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3f

    invoke-direct {v0, v8, v8, v6}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_3f
    const-string v2, "lavenderblush"

    .line 968
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_40

    invoke-direct {v0, v5, v4, v10}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_40
    const-string v2, "lawngreen"

    .line 969
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_41

    const/16 v1, 0x7c

    const/16 v2, 0xfc

    invoke-direct {v0, v1, v2, v7}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_41
    const-string v2, "lemonchiffon"

    .line 970
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_42

    invoke-direct {v0, v5, v6, v11}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_42
    const-string v2, "lightblue"

    .line 971
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_43

    const/16 v1, 0xad

    const/16 v2, 0xd8

    invoke-direct {v0, v1, v2, v8}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_43
    const-string v2, "lightcoral"

    .line 972
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_44

    invoke-direct {v0, v4, v3, v3}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_44
    const-string v2, "lightcyan"

    .line 973
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_45

    const/16 v1, 0xe0

    invoke-direct {v0, v1, v5, v5}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_45
    const-string v2, "lightgoldenrodyellow"

    .line 974
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_46

    const/16 v1, 0xd2

    invoke-direct {v0, v6, v6, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_46
    const-string v2, "lightgray"

    .line 975
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_47

    invoke-direct {v0, v12, v12, v12}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_47
    const-string v2, "lightgreen"

    .line 976
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/16 v9, 0xee

    if-nez v2, :cond_48

    invoke-direct {v0, v13, v9, v13}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_48
    const-string v2, "lightgrey"

    .line 977
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_49

    invoke-direct {v0, v12, v12, v12}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_49
    const-string v2, "lightpink"

    .line 978
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4a

    const/16 v1, 0xb6

    const/16 v2, 0xc1

    invoke-direct {v0, v5, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_4a
    const-string v2, "lightsalmon"

    .line 979
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4b

    const/16 v1, 0x7a

    const/16 v2, 0xa0

    invoke-direct {v0, v5, v2, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_4b
    const-string v2, "lightseagreen"

    .line 980
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4c

    const/16 v1, 0xb2

    const/16 v2, 0xaa

    const/16 v3, 0x20

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_4c
    const-string v2, "lightskyblue"

    .line 981
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4d

    const/16 v1, 0x87

    const/16 v2, 0xce

    invoke-direct {v0, v1, v2, v6}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_4d
    const-string v2, "lightslategray"

    .line 982
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4e

    const/16 v1, 0x88

    const/16 v2, 0x99

    const/16 v3, 0x77

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_4e
    const-string v2, "lightslategrey"

    .line 983
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4f

    const/16 v1, 0x88

    const/16 v2, 0x99

    const/16 v3, 0x77

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_4f
    const-string v2, "lightsteelblue"

    .line 984
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_50

    const/16 v1, 0xb0

    const/16 v2, 0xc4

    const/16 v3, 0xde

    invoke-direct {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_50
    const-string v2, "lightyellow"

    .line 985
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_51

    const/16 v1, 0xe0

    invoke-direct {v0, v5, v5, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_51
    const-string v2, "lime"

    .line 986
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_52

    invoke-direct {v0, v7, v5, v7}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_52
    const-string v2, "limegreen"

    .line 987
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_53

    const/16 v2, 0x32

    invoke-direct {v0, v2, v11, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_53
    const/4 v2, 0x0

    sget-object v2, Lkotlin/sequences/xWeI/kyamZJaSaxi;->xBvmzbLJqtq:Ljava/lang/String;

    .line 988
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_54

    invoke-direct {v0, v6, v4, v8}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_54
    const-string v2, "magenta"

    .line 989
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_55

    invoke-direct {v0, v5, v7, v5}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_55
    const-string v2, "maroon"

    .line 990
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_56

    invoke-direct {v0, v3, v7, v7}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_56
    const-string v2, "mediumaquamarine"

    .line 991
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_57

    const/16 v1, 0x66

    const/16 v2, 0xaa

    invoke-direct {v0, v1, v11, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_57
    const-string v2, "mediumblue"

    .line 992
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_58

    invoke-direct {v0, v7, v7, v11}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_58
    const-string v2, "mediumorchid"

    .line 993
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_59

    const/16 v1, 0xba

    const/16 v2, 0x55

    invoke-direct {v0, v1, v2, v12}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_59
    const-string v2, "mediumpurple"

    .line 994
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x70

    if-nez v2, :cond_5a

    const/16 v1, 0x93

    const/16 v2, 0xdb

    invoke-direct {v0, v1, v4, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_5a
    const-string v2, "mediumseagreen"

    .line 995
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5b

    const/16 v1, 0xb3

    const/16 v2, 0x71

    const/16 v3, 0x3c

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_5b
    const-string v2, "mediumslateblue"

    .line 996
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5c

    const/16 v1, 0x7b

    const/16 v2, 0x68

    invoke-direct {v0, v1, v2, v9}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_5c
    const-string v2, "mediumspringgreen"

    .line 997
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5d

    const/16 v1, 0x9a

    invoke-direct {v0, v7, v6, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_5d
    const-string v2, "mediumturquoise"

    .line 998
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5e

    const/16 v1, 0xd1

    const/16 v2, 0xcc

    const/16 v3, 0x48

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_5e
    const-string v2, "mediumvioletred"

    .line 999
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5f

    const/16 v1, 0x15

    const/16 v2, 0x85

    const/16 v3, 0xc7

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_5f
    const-string v2, "midnightblue"

    .line 1000
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_60

    const/16 v1, 0x19

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2, v4}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_60
    const-string v2, "mintcream"

    .line 1001
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_61

    invoke-direct {v0, v10, v5, v6}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_61
    const-string v2, "mistyrose"

    .line 1002
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_62

    const/16 v1, 0xe4

    const/16 v2, 0xe1

    invoke-direct {v0, v5, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_62
    const-string v2, "moccasin"

    .line 1003
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_63

    const/16 v1, 0xe4

    const/16 v2, 0xb5

    invoke-direct {v0, v5, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_63
    const-string v2, "navajowhite"

    .line 1004
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_64

    const/16 v1, 0xad

    const/16 v2, 0xde

    invoke-direct {v0, v5, v2, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_64
    const-string v2, "navy"

    .line 1005
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_65

    invoke-direct {v0, v7, v7, v3}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_65
    const-string v2, "oldlace"

    .line 1006
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_66

    const/16 v1, 0xfd

    invoke-direct {v0, v1, v10, v8}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_66
    const-string v2, "olive"

    .line 1007
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_67

    invoke-direct {v0, v3, v3, v7}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_67
    const-string v2, "olivedrab"

    .line 1008
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_68

    const/16 v1, 0x8e

    const/16 v2, 0x23

    const/16 v3, 0x6b

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_68
    const-string v2, "orange"

    .line 1009
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_69

    const/16 v1, 0xa5

    invoke-direct {v0, v5, v1, v7}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_69
    const-string v2, "orangered"

    .line 1010
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6a

    const/16 v1, 0x45

    invoke-direct {v0, v5, v1, v7}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_6a
    const-string v2, "orchid"

    .line 1011
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6b

    const/16 v1, 0xda

    const/16 v2, 0xd6

    invoke-direct {v0, v1, v4, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_6b
    const-string v2, "palegoldenrod"

    .line 1012
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6c

    const/16 v1, 0xe8

    const/16 v2, 0xaa

    invoke-direct {v0, v9, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_6c
    const-string v2, "palegreen"

    .line 1013
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6d

    const/16 v1, 0xfb

    const/16 v2, 0x98

    const/16 v3, 0x98

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_6d
    const-string v2, "paleturquoise"

    .line 1014
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6e

    const/16 v1, 0xaf

    invoke-direct {v0, v1, v9, v9}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_6e
    const-string v2, "palevioletred"

    .line 1015
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6f

    const/16 v1, 0xdb

    const/16 v2, 0x93

    invoke-direct {v0, v1, v4, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_6f
    const-string v2, "papayawhip"

    .line 1016
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_70

    const/16 v1, 0xef

    const/16 v2, 0xd5

    invoke-direct {v0, v5, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_70
    const-string v2, "peachpuff"

    .line 1017
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_71

    const/16 v1, 0xda

    const/16 v2, 0xb9

    invoke-direct {v0, v5, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_71
    const-string v2, "peru"

    .line 1018
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_72

    const/16 v1, 0x85

    const/16 v2, 0x3f

    invoke-direct {v0, v11, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_72
    const-string v2, "pink"

    .line 1019
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_73

    const/16 v1, 0xc0

    const/16 v2, 0xcb

    invoke-direct {v0, v5, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_73
    const-string v2, "plum"

    .line 1020
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_74

    const/16 v1, 0xdd

    const/16 v2, 0xdd

    const/16 v3, 0xa0

    invoke-direct {v0, v1, v3, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_74
    const-string v2, "powderblue"

    .line 1021
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_75

    const/16 v1, 0xb0

    const/16 v2, 0xe0

    invoke-direct {v0, v1, v2, v8}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_75
    const-string v2, "purple"

    .line 1022
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_76

    invoke-direct {v0, v3, v7, v3}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_76
    const-string v2, "red"

    .line 1023
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_77

    invoke-direct {v0, v5, v7, v7}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_77
    const-string v2, "rosybrown"

    .line 1024
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_78

    const/16 v1, 0x8f

    const/16 v2, 0x8f

    const/16 v3, 0xbc

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_78
    const-string v2, "royalblue"

    .line 1025
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_79

    const/16 v1, 0x41

    const/16 v2, 0xe1

    invoke-direct {v0, v1, v14, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_79
    const-string/jumbo v2, "saddlebrown"

    .line 1026
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7a

    const/16 v1, 0x45

    const/16 v2, 0x13

    invoke-direct {v0, v15, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_7a
    const-string/jumbo v2, "salmon"

    .line 1027
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7b

    const/16 v1, 0x72

    invoke-direct {v0, v6, v3, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_7b
    const-string/jumbo v2, "sandybrown"

    .line 1028
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7c

    const/16 v1, 0xa4

    const/16 v2, 0x60

    const/16 v3, 0xf4

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_7c
    const-string/jumbo v2, "seagreen"

    .line 1029
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7d

    const/16 v1, 0x2e

    const/16 v2, 0x57

    invoke-direct {v0, v1, v15, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_7d
    const-string/jumbo v2, "seashell"

    .line 1030
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7e

    invoke-direct {v0, v5, v10, v9}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_7e
    const-string/jumbo v2, "sienna"

    .line 1031
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7f

    const/16 v1, 0x52

    const/16 v2, 0x2d

    const/16 v3, 0xa0

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_7f
    const-string/jumbo v2, "silver"

    .line 1032
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_80

    const/16 v1, 0xc0

    const/16 v2, 0xc0

    const/16 v3, 0xc0

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_80
    const-string/jumbo v2, "skyblue"

    .line 1033
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_81

    const/16 v1, 0xce

    const/16 v2, 0xeb

    const/16 v3, 0x87

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_81
    const-string/jumbo v2, "slateblue"

    .line 1034
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_82

    const/16 v1, 0x6a

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v2, v11}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_82
    const-string/jumbo v2, "slategray"

    .line 1035
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_83

    invoke-direct {v0, v4, v3, v13}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_83
    const-string/jumbo v2, "slategrey"

    .line 1036
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_84

    invoke-direct {v0, v4, v3, v13}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_84
    const-string/jumbo v2, "snow"

    .line 1037
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_85

    invoke-direct {v0, v5, v6, v6}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_85
    const-string/jumbo v2, "springgreen"

    .line 1038
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_86

    const/16 v2, 0x7f

    invoke-direct {v0, v7, v5, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_86
    const-string/jumbo v2, "steelblue"

    .line 1039
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_87

    const/16 v1, 0x82

    const/16 v2, 0xb4

    const/16 v3, 0x46

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_87
    const-string/jumbo v2, "tan"

    .line 1040
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_88

    const/16 v1, 0xb4

    const/16 v2, 0x8c

    const/16 v3, 0xd2

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_88
    const-string/jumbo v2, "teal"

    .line 1041
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_89

    invoke-direct {v0, v7, v3, v3}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_89
    const-string/jumbo v2, "thistle"

    .line 1042
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8a

    const/16 v1, 0xbf

    const/16 v2, 0xd8

    const/16 v3, 0xd8

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_8a
    const-string/jumbo v2, "tomato"

    .line 1043
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8b

    const/16 v1, 0x63

    const/16 v2, 0x47

    invoke-direct {v0, v5, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_8b
    const-string/jumbo v2, "turquoise"

    .line 1044
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8c

    const/16 v1, 0xe0

    const/16 v2, 0xd0

    const/16 v3, 0x40

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_8c
    const-string/jumbo v2, "violet"

    .line 1045
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8d

    const/16 v1, 0x82

    invoke-direct {v0, v9, v1, v9}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_8d
    const-string/jumbo v2, "wheat"

    .line 1046
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8e

    const/16 v1, 0xb3

    const/16 v2, 0xde

    invoke-direct {v0, v10, v2, v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_8e
    const-string/jumbo v2, "white"

    .line 1047
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8f

    invoke-direct {v0, v5, v5, v5}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_8f
    const-string/jumbo v2, "whitesmoke"

    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_90

    invoke-direct {v0, v10, v10, v10}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_90
    const-string/jumbo v2, "yellow"

    .line 1049
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_91

    invoke-direct {v0, v5, v5, v7}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_91
    const-string/jumbo v2, "yellowgreen"

    .line 1050
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_92

    const/16 v1, 0x9a

    const/16 v2, 0x32

    invoke-direct {v0, v1, v11, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;->rgb(III)I

    move-result v1

    return v1

    :cond_92
    const/high16 v1, -0x1000000

    return v1
.end method
