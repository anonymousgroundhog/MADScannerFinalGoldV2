.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CSSTextScanner"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "(?s)/\\*.*?\\*/"

    const-string v1, ""

    .line 341
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private hexChar(I)I
    .locals 2

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v1, 0x46

    if-gt p1, v1, :cond_1

    :goto_0
    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xa

    return p1

    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v1, 0x66

    if-gt p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private nextAttribValue()Ljava/lang/String;
    .locals 1

    .line 515
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 521
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private scanForIdentifier()I
    .locals 9

    .line 359
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    return v0

    .line 361
    :cond_0
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 362
    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 364
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v2

    :cond_1
    const/16 v4, 0x7a

    const/16 v5, 0x5f

    const/16 v6, 0x5a

    const/16 v7, 0x61

    const/16 v8, 0x41

    if-lt v2, v8, :cond_2

    if-le v2, v6, :cond_4

    :cond_2
    if-lt v2, v7, :cond_3

    if-le v2, v4, :cond_4

    :cond_3
    if-ne v2, v5, :cond_a

    .line 370
    :cond_4
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v1

    :goto_0
    if-lt v1, v8, :cond_5

    if-le v1, v6, :cond_9

    :cond_5
    if-lt v1, v7, :cond_6

    if-le v1, v4, :cond_9

    :cond_6
    const/16 v2, 0x30

    if-lt v1, v2, :cond_7

    const/16 v2, 0x39

    if-le v1, v2, :cond_9

    :cond_7
    if-eq v1, v3, :cond_9

    if-ne v1, v5, :cond_8

    goto :goto_1

    .line 375
    :cond_8
    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    goto :goto_2

    .line 373
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v1

    goto :goto_0

    .line 377
    :cond_a
    :goto_2
    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    return v1
.end method


# virtual methods
.method nextCSSString()Ljava/lang/String;
    .locals 8

    .line 551
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x27

    if-eq v0, v2, :cond_1

    const/16 v2, 0x22

    if-eq v0, v2, :cond_1

    return-object v1

    .line 558
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 559
    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 560
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    if-eq v2, v0, :cond_8

    const/16 v5, 0x5c

    if-ne v2, v5, :cond_7

    .line 565
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    const/16 v5, 0xa

    if-eq v2, v5, :cond_6

    const/16 v5, 0xd

    if-eq v2, v5, :cond_6

    const/16 v5, 0xc

    if-ne v2, v5, :cond_3

    goto :goto_3

    .line 572
    :cond_3
    invoke-direct {p0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->hexChar(I)I

    move-result v5

    if-eq v5, v4, :cond_7

    move v6, v3

    :goto_1
    const/4 v7, 0x5

    if-gt v6, v7, :cond_5

    .line 576
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 577
    invoke-direct {p0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->hexChar(I)I

    move-result v7

    if-ne v7, v4, :cond_4

    goto :goto_2

    :cond_4
    mul-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    int-to-char v4, v5

    .line 582
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 569
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_7
    int-to-char v2, v2

    .line 588
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 589
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 591
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method nextIdentifier()Ljava/lang/String;
    .locals 3

    .line 349
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->scanForIdentifier()I

    move-result v0

    .line 350
    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 353
    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    return-object v1
.end method

.method nextLegacyURL()Ljava/lang/String;
    .locals 7

    .line 646
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 648
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 650
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x27

    if-eq v1, v2, :cond_8

    const/16 v2, 0x22

    if-eq v1, v2, :cond_8

    const/16 v2, 0x28

    if-eq v1, v2, :cond_8

    const/16 v2, 0x29

    if-eq v1, v2, :cond_8

    .line 652
    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    .line 655
    :cond_1
    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_7

    .line 658
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 661
    :cond_2
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 665
    :cond_3
    invoke-direct {p0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->hexChar(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    move v1, v3

    :goto_1
    const/4 v5, 0x5

    if-gt v1, v5, :cond_6

    .line 669
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 671
    :cond_4
    iget-object v5, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v6, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->hexChar(I)I

    move-result v5

    if-ne v5, v4, :cond_5

    goto :goto_2

    .line 674
    :cond_5
    iget v6, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    int-to-char v1, v2

    .line 677
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_7
    int-to-char v1, v1

    .line 683
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 685
    :cond_8
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    return-object v0

    .line 687
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method nextPropertyValue()Ljava/lang/String;
    .locals 5

    .line 529
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 531
    :cond_0
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 532
    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 534
    iget-object v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x21

    if-eq v3, v4, :cond_2

    .line 535
    invoke-virtual {p0, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->isEOL(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 536
    invoke-virtual {p0, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->isWhitespace(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 537
    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    add-int/lit8 v2, v2, 0x1

    .line 538
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v3

    goto :goto_0

    .line 540
    :cond_2
    iget v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    if-le v3, v0, :cond_3

    .line 541
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 542
    :cond_3
    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    return-object v1
.end method

.method nextSimpleSelector(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;
        }
    .end annotation

    .line 388
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 391
    :cond_0
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 395
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const/16 v2, 0x3e

    .line 397
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;->CHILD:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    .line 399
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_0

    :cond_1
    const/16 v2, 0x2b

    .line 400
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 401
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;->FOLLOWS:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    .line 402
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    const/16 v4, 0x2a

    .line 406
    invoke-virtual {p0, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 407
    new-instance v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v4, v2, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    goto :goto_1

    .line 409
    :cond_3
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 411
    new-instance v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v5, v2, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->addedElement()V

    move-object v4, v5

    goto :goto_1

    :cond_4
    move-object v4, v3

    .line 416
    :goto_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_16

    const/16 v5, 0x2e

    .line 418
    invoke-virtual {p0, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v4, :cond_5

    .line 422
    new-instance v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v4, v2, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 423
    :cond_5
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v6, "class"

    .line 426
    sget-object v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v4, v6, v7, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 427
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_1

    .line 425
    :cond_6
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;

    const-string v0, "Invalid \".class\" selector"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/16 v5, 0x23

    .line 431
    invoke-virtual {p0, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_a

    if-nez v4, :cond_8

    .line 435
    new-instance v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v4, v2, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 436
    :cond_8
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    const-string v7, "id"

    .line 439
    sget-object v8, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v4, v7, v8, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->addedIdAttribute()V

    goto :goto_2

    .line 438
    :cond_9
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;

    const-string v0, "Invalid \"#id\" selector"

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_2
    if-nez v4, :cond_b

    goto/16 :goto_5

    :cond_b
    const/16 v5, 0x5b

    .line 447
    invoke-virtual {p0, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 449
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 450
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Invalid attribute selector"

    if-eqz v5, :cond_13

    .line 454
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    const/16 v7, 0x3d

    .line 456
    invoke-virtual {p0, v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 457
    sget-object v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    goto :goto_3

    :cond_c
    const-string/jumbo v7, "~="

    .line 458
    invoke-virtual {p0, v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 459
    sget-object v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    goto :goto_3

    :cond_d
    const-string/jumbo v7, "|="

    .line 460
    invoke-virtual {p0, v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 461
    sget-object v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    goto :goto_3

    :cond_e
    move-object v7, v3

    :goto_3
    if-eqz v7, :cond_10

    .line 463
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 464
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextAttribValue()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 467
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_4

    .line 466
    :cond_f
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;

    invoke-direct {p1, v6}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    move-object v8, v3

    :goto_4
    const/16 v9, 0x5d

    .line 469
    invoke-virtual {p0, v9}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-eqz v9, :cond_12

    if-nez v7, :cond_11

    .line 471
    sget-object v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    :cond_11
    invoke-virtual {v4, v5, v7, v8}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto/16 :goto_1

    .line 470
    :cond_12
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;

    invoke-direct {p1, v6}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 453
    :cond_13
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;

    invoke-direct {p1, v6}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    const/16 v2, 0x3a

    .line 476
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 479
    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 480
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    const/16 v3, 0x28

    .line 481
    invoke-virtual {p0, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 482
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 483
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 484
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    const/16 v3, 0x29

    .line 485
    invoke-virtual {p0, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-nez v3, :cond_15

    sub-int/2addr v2, v6

    .line 486
    iput v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    goto :goto_5

    .line 491
    :cond_15
    iget-object v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v5, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->addPseudo(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    :cond_16
    :goto_5
    if-eqz v4, :cond_17

    .line 501
    invoke-virtual {p1, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->add(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;)V

    return v6

    .line 506
    :cond_17
    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    return v1
.end method

.method nextURL()Ljava/lang/String;
    .locals 4

    .line 613
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 615
    :cond_0
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    const-string/jumbo v2, "url("

    .line 616
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 619
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 621
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextCSSString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 623
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->nextLegacyURL()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    .line 626
    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    return-object v1

    .line 630
    :cond_3
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 632
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, ")"

    invoke-virtual {p0, v3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 635
    :cond_4
    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$CSSTextScanner;->position:I

    return-object v1

    :cond_5
    :goto_0
    return-object v2
.end method
