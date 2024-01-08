.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextScanner"
.end annotation


# instance fields
.field input:Ljava/lang/String;

.field inputLength:I

.field private numberParser:Lcom/brakefield/infinitestudio/image/svg/androidsvg/NumberParser;

.field position:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2510
    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    .line 2511
    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->inputLength:I

    .line 2513
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/NumberParser;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/NumberParser;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->numberParser:Lcom/brakefield/infinitestudio/image/svg/androidsvg/NumberParser;

    .line 2518
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    .line 2519
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->inputLength:I

    return-void
.end method


# virtual methods
.method advanceChar()I
    .locals 3

    .line 2693
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->inputLength:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2695
    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    if-ge v0, v1, :cond_1

    .line 2697
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_1
    return v2
.end method

.method ahead()Ljava/lang/String;
    .locals 3

    .line 2814
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    .line 2815
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2816
    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_0

    .line 2817
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2818
    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    return-object v1
.end method

.method checkedNextFlag(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2665
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2666
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFlag()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method checkedNextFloat(F)F
    .locals 0

    .line 2593
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    .line 2596
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2597
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result p1

    return p1
.end method

.method checkedNextFloat(Ljava/lang/Boolean;)F
    .locals 0

    if-nez p1, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    .line 2605
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2606
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result p1

    return p1
.end method

.method consume(C)Z
    .locals 3

    .line 2671
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->inputLength:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2673
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    :cond_1
    return p1
.end method

.method consume(Ljava/lang/String;)Z
    .locals 4

    .line 2680
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2681
    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->inputLength:I

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_0

    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    add-int v3, v1, v0

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2683
    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    :cond_1
    return p1
.end method

.method empty()Z
    .locals 2

    .line 2527
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasLetter()Z
    .locals 3

    .line 2847
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->inputLength:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2849
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_1

    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    :cond_1
    const/16 v1, 0x41

    if-lt v0, v1, :cond_3

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method isEOL(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method isWhitespace(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method nextChar()Ljava/lang/Integer;
    .locals 3

    .line 2625
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2627
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method nextFlag()Ljava/lang/Boolean;
    .locals 4

    .line 2647
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->inputLength:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 2649
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    const/16 v3, 0x31

    if-eq v0, v1, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    .line 2651
    :cond_2
    :goto_0
    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 2652
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method nextFloat()F
    .locals 4

    .line 2566
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->numberParser:Lcom/brakefield/infinitestudio/image/svg/androidsvg/NumberParser;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    iget v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->inputLength:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/NumberParser;->parseNumber(Ljava/lang/String;II)F

    move-result v0

    .line 2567
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2568
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->numberParser:Lcom/brakefield/infinitestudio/image/svg/androidsvg/NumberParser;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/NumberParser;->getEndPos()I

    move-result v1

    iput v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    :cond_0
    return v0
.end method

.method nextFunction()Ljava/lang/String;
    .locals 5

    .line 2791
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2793
    :cond_0
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    .line 2795
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7a

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x41

    if-lt v2, v3, :cond_3

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_3

    .line 2797
    :cond_2
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    goto :goto_0

    .line 2798
    :cond_3
    iget v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    .line 2799
    :goto_1
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2800
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    goto :goto_1

    :cond_4
    const/16 v4, 0x28

    if-ne v2, v4, :cond_5

    .line 2802
    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    .line 2803
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2805
    :cond_5
    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    return-object v1
.end method

.method nextLength()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;
    .locals 3

    .line 2632
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v0

    .line 2633
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2635
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextUnit()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2637
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->px:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    invoke-direct {v1, v0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;-><init>(FLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;)V

    return-object v1

    .line 2639
    :cond_1
    new-instance v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-direct {v2, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;-><init>(FLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;)V

    return-object v2
.end method

.method nextQuotedString()Ljava/lang/String;
    .locals 5

    .line 2858
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2860
    :cond_0
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    .line 2861
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x27

    if-eq v2, v3, :cond_1

    const/16 v3, 0x22

    if-eq v2, v3, :cond_1

    return-object v1

    .line 2865
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-eq v3, v2, :cond_2

    .line 2867
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v3

    goto :goto_0

    :cond_2
    if-ne v3, v4, :cond_3

    .line 2869
    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    return-object v1

    .line 2872
    :cond_3
    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    .line 2873
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method nextToken()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    .line 2711
    invoke-virtual {p0, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextToken(CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method nextToken(C)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2721
    invoke-virtual {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextToken(CZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method nextToken(CZ)Ljava/lang/String;
    .locals 3

    .line 2741
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2744
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-nez p2, :cond_1

    .line 2745
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-ne v0, p1, :cond_3

    :cond_2
    return-object v1

    .line 2748
    :cond_3
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    .line 2749
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    if-ne v1, p1, :cond_4

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    .line 2753
    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 2755
    :cond_5
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v1

    goto :goto_0

    .line 2757
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method nextTokenWithWhitespace(C)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 2731
    invoke-virtual {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->nextToken(CZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method nextUnit()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;
    .locals 4

    .line 2824
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2826
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x25

    if-ne v0, v2, :cond_1

    .line 2828
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    .line 2829
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->percent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    return-object v0

    .line 2831
    :cond_1
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->inputLength:I

    add-int/lit8 v2, v2, -0x2

    if-le v0, v2, :cond_2

    return-object v1

    .line 2834
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    move-result-object v0

    .line 2835
    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method nextWord()Ljava/lang/String;
    .locals 7

    .line 2767
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2769
    :cond_0
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    .line 2771
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7a

    const/16 v4, 0x5a

    const/16 v5, 0x61

    const/16 v6, 0x41

    if-lt v2, v6, :cond_1

    if-le v2, v4, :cond_2

    :cond_1
    if-lt v2, v5, :cond_6

    if-gt v2, v3, :cond_6

    .line 2774
    :cond_2
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v1

    :goto_0
    if-lt v1, v6, :cond_3

    if-le v1, v4, :cond_4

    :cond_3
    if-lt v1, v5, :cond_5

    if-gt v1, v3, :cond_5

    .line 2776
    :cond_4
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v1

    goto :goto_0

    .line 2777
    :cond_5
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2779
    :cond_6
    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    return-object v1
.end method

.method possibleNextFloat()F
    .locals 4

    .line 2579
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2580
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->numberParser:Lcom/brakefield/infinitestudio/image/svg/androidsvg/NumberParser;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    iget v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->inputLength:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/NumberParser;->parseNumber(Ljava/lang/String;II)F

    move-result v0

    .line 2581
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2582
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->numberParser:Lcom/brakefield/infinitestudio/image/svg/androidsvg/NumberParser;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/NumberParser;->getEndPos()I

    move-result v1

    iput v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    :cond_0
    return v0
.end method

.method restOfText()Ljava/lang/String;
    .locals 2

    .line 2881
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2884
    :cond_0
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    .line 2885
    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->inputLength:I

    iput v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    .line 2886
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method skipCommaWhitespace()Z
    .locals 3

    .line 2553
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2554
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->inputLength:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2556
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    return v2

    .line 2558
    :cond_1
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    .line 2559
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    return v1
.end method

.method skipWhitespace()V
    .locals 2

    .line 2537
    :goto_0
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ge v0, v1, :cond_1

    .line 2538
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2540
    :cond_0
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
