.class public Lorg/ejml/ops/ReadCsv;
.super Ljava/lang/Object;
.source "ReadCsv.java"


# instance fields
.field private comment:C

.field private hasComment:Z

.field private in:Ljava/io/BufferedReader;

.field private lineNumber:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lorg/ejml/ops/ReadCsv;->hasComment:Z

    .line 56
    iput v0, p0, Lorg/ejml/ops/ReadCsv;->lineNumber:I

    .line 64
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/ejml/ops/ReadCsv;->in:Ljava/io/BufferedReader;

    return-void
.end method

.method private isSpace(C)Z
    .locals 1

    const/16 v0, 0x20

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


# virtual methods
.method protected extractWords()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    :goto_0
    iget v0, p0, Lorg/ejml/ops/ReadCsv;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/ops/ReadCsv;->lineNumber:I

    .line 103
    iget-object v0, p0, Lorg/ejml/ops/ReadCsv;->in:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_0
    iget-boolean v1, p0, Lorg/ejml/ops/ReadCsv;->hasComment:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-char v2, p0, Lorg/ejml/ops/ReadCsv;->comment:C

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0, v0}, Lorg/ejml/ops/ReadCsv;->parseWords(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 83
    iget v0, p0, Lorg/ejml/ops/ReadCsv;->lineNumber:I

    return v0
.end method

.method public getReader()Ljava/io/BufferedReader;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/ejml/ops/ReadCsv;->in:Ljava/io/BufferedReader;

    return-object v0
.end method

.method protected parseWords(Ljava/lang/String;)Ljava/util/List;
    .locals 7
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

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/ejml/ops/ReadCsv;->isSpace(C)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    move v4, v1

    move v5, v4

    .line 129
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 130
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v2, :cond_0

    .line 134
    invoke-direct {p0, v6}, Lorg/ejml/ops/ReadCsv;->isSpace(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 135
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v1

    goto :goto_1

    .line 139
    :cond_0
    invoke-direct {p0, v6}, Lorg/ejml/ops/ReadCsv;->isSpace(C)Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v3

    move v5, v4

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 148
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public setComment(C)V
    .locals 1

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lorg/ejml/ops/ReadCsv;->hasComment:Z

    .line 74
    iput-char p1, p0, Lorg/ejml/ops/ReadCsv;->comment:C

    return-void
.end method
