.class public Lorg/ejml/ops/MatrixIO;
.super Ljava/lang/Object;
.source "MatrixIO.java"


# static fields
.field public static final DEFAULT_FLOAT_FORMAT:Ljava/lang/String; = "%11.4E"

.field public static final DEFAULT_LENGTH:I = 0xb

.field public static MATLAB_FORMAT:Ljava/lang/String; = "%.8E"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMatrixType(Lorg/ejml/data/Matrix;)Ljava/lang/String;
    .locals 2

    .line 903
    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v0

    sget-object v1, Lorg/ejml/data/MatrixType;->UNSPECIFIED:Lorg/ejml/data/MatrixType;

    if-ne v0, v1, :cond_0

    .line 904
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 906
    :cond_0
    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/ejml/data/MatrixType;->name()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static loadBin(Ljava/lang/String;)Lorg/ejml/data/DMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ejml/data/DMatrix;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 308
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 312
    :try_start_0
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DMatrix;

    .line 313
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->available()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 320
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    return-object v0

    .line 314
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "File not completely read?"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 317
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static loadCSV(Ljava/lang/String;Z)Lorg/ejml/data/DMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ejml/data/DMatrix;",
            ">(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 406
    new-instance p0, Lorg/ejml/ops/ReadMatrixCsv;

    invoke-direct {p0, v0}, Lorg/ejml/ops/ReadMatrixCsv;-><init>(Ljava/io/InputStream;)V

    if-eqz p1, :cond_0

    .line 410
    invoke-virtual {p0}, Lorg/ejml/ops/ReadMatrixCsv;->read64()Lorg/ejml/data/Matrix;

    move-result-object p0

    check-cast p0, Lorg/ejml/data/DMatrix;

    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/ops/ReadMatrixCsv;->read32()Lorg/ejml/data/Matrix;

    move-result-object p0

    check-cast p0, Lorg/ejml/data/DMatrix;

    .line 414
    :goto_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p0
.end method

.method public static loadCSV(Ljava/lang/String;II)Lorg/ejml/data/DMatrixRMaj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 432
    new-instance p0, Lorg/ejml/ops/ReadMatrixCsv;

    invoke-direct {p0, v0}, Lorg/ejml/ops/ReadMatrixCsv;-><init>(Ljava/io/InputStream;)V

    .line 434
    invoke-virtual {p0, p1, p2}, Lorg/ejml/ops/ReadMatrixCsv;->readDDRM(II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    .line 436
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p0
.end method

.method public static loadMatrixMarketD(Ljava/io/Reader;)Lorg/ejml/data/DMatrixSparseTriplet;
    .locals 8

    .line 154
    new-instance v0, Lorg/ejml/data/DMatrixSparseTriplet;

    invoke-direct {v0}, Lorg/ejml/data/DMatrixSparseTriplet;-><init>()V

    .line 155
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 158
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-eqz p0, :cond_4

    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_0

    goto :goto_2

    .line 164
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v4, "\\s+"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 165
    array-length v4, p0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 168
    aget-object v6, p0, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v6, v5

    .line 169
    aget-object v7, p0, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v7, v5

    .line 170
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 171
    invoke-virtual {v0, v6, v7, v4, v5}, Lorg/ejml/data/DMatrixSparseTriplet;->addItem(IID)V

    goto :goto_1

    .line 173
    :cond_1
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 174
    aget-object v6, p0, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 175
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 176
    invoke-virtual {v0, v3, v6, p0}, Lorg/ejml/data/DMatrixSparseTriplet;->reshape(III)V

    move v3, v5

    .line 179
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 166
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected number of words: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    return-object v0

    :catch_0
    move-exception p0

    .line 182
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static loadMatrixMarketF(Ljava/io/InputStream;)Lorg/ejml/data/FMatrixSparseTriplet;
    .locals 7

    .line 240
    new-instance v0, Lorg/ejml/data/FMatrixSparseTriplet;

    invoke-direct {v0}, Lorg/ejml/data/FMatrixSparseTriplet;-><init>()V

    .line 241
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 244
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-eqz p0, :cond_4

    .line 246
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v4, "\\s"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 249
    array-length v4, p0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 252
    aget-object v6, p0, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 253
    aget-object v5, p0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 254
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 255
    invoke-virtual {v0, v6, v5, p0}, Lorg/ejml/data/FMatrixSparseTriplet;->addItem(IIF)V

    goto :goto_1

    .line 257
    :cond_2
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 258
    aget-object v6, p0, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 259
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 260
    invoke-virtual {v0, v3, v6, p0}, Lorg/ejml/data/FMatrixSparseTriplet;->reshape(III)V

    move v3, v5

    .line 263
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 250
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected number of words: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    :catch_0
    move-exception p0

    .line 266
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static loadMatrixMarketF(Ljava/io/Reader;)Lorg/ejml/data/FMatrixSparseTriplet;
    .locals 8

    .line 197
    new-instance v0, Lorg/ejml/data/FMatrixSparseTriplet;

    invoke-direct {v0}, Lorg/ejml/data/FMatrixSparseTriplet;-><init>()V

    .line 198
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 201
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-eqz p0, :cond_4

    .line 203
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_0

    goto :goto_2

    .line 207
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v4, "\\s+"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 208
    array-length v4, p0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 211
    aget-object v6, p0, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v6, v5

    .line 212
    aget-object v7, p0, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v7, v5

    .line 213
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 214
    invoke-virtual {v0, v6, v7, p0}, Lorg/ejml/data/FMatrixSparseTriplet;->addItem(IIF)V

    goto :goto_1

    .line 216
    :cond_1
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 217
    aget-object v6, p0, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 218
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 219
    invoke-virtual {v0, v3, v6, p0}, Lorg/ejml/data/FMatrixSparseTriplet;->reshape(III)V

    move v3, v5

    .line 222
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 209
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected number of words: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    return-object v0

    :catch_0
    move-exception p0

    .line 225
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static matlabToDDRM(Ljava/lang/String;)Lorg/ejml/data/DMatrixRMaj;
    .locals 8

    const-string v0, "(\\s+|\\[|\\])"

    const-string v1, ""

    .line 53
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ";"

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 55
    aget-object v1, p0, v0

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 56
    new-instance v3, Lorg/ejml/data/DMatrixRMaj;

    array-length v4, p0

    array-length v1, v1

    invoke-direct {v3, v4, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    move v1, v0

    .line 57
    :goto_0
    iget v4, v3, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v1, v4, :cond_2

    .line 58
    aget-object v4, p0, v1

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 59
    array-length v5, v4

    iget v6, v3, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v5, v6, :cond_1

    move v5, v0

    .line 61
    :goto_1
    iget v6, v3, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v5, v6, :cond_0

    .line 62
    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 63
    invoke-virtual {v3, v1, v5, v6, v7}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent column lengths. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v3, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v3
.end method

.method public static matlabToFDRM(Ljava/lang/String;)Lorg/ejml/data/FMatrixRMaj;
    .locals 7

    const-string v0, "(\\s+|\\[|\\])"

    const-string v1, ""

    .line 74
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ";"

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 76
    aget-object v1, p0, v0

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 77
    new-instance v3, Lorg/ejml/data/FMatrixRMaj;

    array-length v4, p0

    array-length v1, v1

    invoke-direct {v3, v4, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    move v1, v0

    .line 78
    :goto_0
    iget v4, v3, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v4, :cond_2

    .line 79
    aget-object v4, p0, v1

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 80
    array-length v5, v4

    iget v6, v3, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v5, v6, :cond_1

    move v5, v0

    .line 82
    :goto_1
    iget v6, v3, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v5, v6, :cond_0

    .line 83
    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 84
    invoke-virtual {v3, v1, v5, v6}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent column lengths. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v3, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v3
.end method

.method private static padSpace(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 2

    .line 524
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_0
    if-ge v1, p1, :cond_0

    const/16 v0, 0x20

    .line 526
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static print(Ljava/io/PrintStream;Lorg/ejml/data/CMatrix;Ljava/lang/String;)V
    .locals 6

    .line 884
    invoke-static {p0, p1}, Lorg/ejml/ops/MatrixIO;->printTypeSize(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;)V

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 888
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 889
    :goto_0
    invoke-interface {p1}, Lorg/ejml/data/CMatrix;->getNumRows()I

    move-result v3

    if-ge v2, v3, :cond_2

    move v3, v1

    .line 890
    :goto_1
    invoke-interface {p1}, Lorg/ejml/data/CMatrix;->getNumCols()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 891
    invoke-interface {p1, v2, v3, v0}, Lorg/ejml/data/CMatrix;->get(IILorg/ejml/data/Complex_F32;)V

    .line 892
    iget v4, v0, Lorg/ejml/data/Complex_F32;->real:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v5, v0, Lorg/ejml/data/Complex_F32;->imaginary:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p2, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 893
    invoke-interface {p1}, Lorg/ejml/data/CMatrix;->getNumCols()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    const-string v4, " , "

    .line 894
    invoke-virtual {p0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 897
    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;)V
    .locals 1

    const/4 v0, 0x0

    sget-object v0, Landroidx/navigation/ui/zZ/NxTXUJn;->IOfzch:Ljava/lang/String;

    .line 596
    invoke-static {p0, p1, v0}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public static print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;Ljava/lang/String;)V
    .locals 5

    .line 610
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "matlab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    invoke-static {p0, p1}, Lorg/ejml/ops/MatrixIO;->printMatlab(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;)V

    goto :goto_2

    .line 612
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    invoke-static {p0, p1, p2}, Lorg/ejml/ops/MatrixIO;->printJava(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;Ljava/lang/String;)V

    goto :goto_2

    .line 615
    :cond_1
    invoke-static {p0, p1}, Lorg/ejml/ops/MatrixIO;->printTypeSize(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;)V

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 619
    :goto_0
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 620
    :goto_1
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 621
    invoke-interface {p1, v1, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 623
    :cond_2
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public static print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;Ljava/lang/String;IIII)V
    .locals 3

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Type = submatrix , rows "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  columns "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-ge p3, p4, :cond_1

    move v0, p5

    :goto_1
    if-ge v0, p6, :cond_0

    .line 811
    invoke-interface {p1, p3, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 813
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrixSparseCSC;Ljava/lang/String;)V
    .locals 6

    .line 673
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "matlab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    invoke-static {p0, p1}, Lorg/ejml/ops/MatrixIO;->printMatlab(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;)V

    goto :goto_3

    .line 676
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/ops/MatrixIO;->printTypeSize(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;)V

    const-wide v0, -0x400e3404ea4a8c15L    # -1.1123

    .line 678
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 679
    new-array v1, v0, [C

    const/16 v2, 0x20

    .line 680
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 681
    div-int/lit8 v0, v0, 0x2

    const/16 v2, 0x2a

    aput-char v2, v1, v0

    const/4 v0, 0x0

    move v2, v0

    .line 683
    :goto_0
    iget v3, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ge v2, v3, :cond_4

    move v3, v0

    .line 684
    :goto_1
    iget v4, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v3, v4, :cond_3

    .line 685
    invoke-virtual {p1, v2, v3}, Lorg/ejml/data/DMatrixSparseCSC;->nz_index(II)I

    move-result v4

    if-ltz v4, :cond_1

    .line 687
    iget-object v5, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v4, v5, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p2, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_2

    .line 689
    :cond_1
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print([C)V

    .line 690
    :goto_2
    iget v4, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_2

    const-string v4, " "

    .line 691
    invoke-virtual {p0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 693
    :cond_3
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public static print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrixSparseTriplet;Ljava/lang/String;)V
    .locals 5

    .line 725
    invoke-static {p0, p1}, Lorg/ejml/ops/MatrixIO;->printTypeSize(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;)V

    const/4 v0, 0x0

    move v1, v0

    .line 727
    :goto_0
    iget v2, p1, Lorg/ejml/data/DMatrixSparseTriplet;->numRows:I

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 728
    :goto_1
    iget v3, p1, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    if-ge v2, v3, :cond_2

    .line 729
    invoke-virtual {p1, v1, v2}, Lorg/ejml/data/DMatrixSparseTriplet;->nz_index(II)I

    move-result v3

    if-ltz v3, :cond_0

    .line 731
    iget-object v4, p1, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    iget-object v4, v4, Lorg/ejml/data/DGrowArray;->data:[D

    aget-wide v3, v4, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_2

    :cond_0
    const-string v3, "   *  "

    .line 733
    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 734
    :goto_2
    iget v3, p1, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    const-string v3, " "

    .line 735
    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 737
    :cond_2
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;)V
    .locals 1

    const-string v0, "%11.4E"

    .line 781
    invoke-static {p0, p1, v0}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public static print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;Ljava/lang/String;)V
    .locals 4

    .line 785
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "matlab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    invoke-static {p0, p1}, Lorg/ejml/ops/MatrixIO;->printMatlab(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;)V

    goto :goto_2

    .line 787
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    invoke-static {p0, p1, p2}, Lorg/ejml/ops/MatrixIO;->printJava(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;Ljava/lang/String;)V

    goto :goto_2

    .line 790
    :cond_1
    invoke-static {p0, p1}, Lorg/ejml/ops/MatrixIO;->printTypeSize(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;)V

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 794
    :goto_0
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 795
    :goto_1
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 796
    invoke-interface {p1, v1, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 798
    :cond_2
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public static print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;Ljava/lang/String;IIII)V
    .locals 3

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Type = submatrix , rows "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  columns "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "i"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-ge p3, p4, :cond_1

    move v0, p5

    :goto_1
    if-ge v0, p6, :cond_0

    .line 847
    invoke-interface {p1, p3, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 849
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrixSparseCSC;Ljava/lang/String;)V
    .locals 6

    .line 699
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "matlab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    invoke-static {p0, p1}, Lorg/ejml/ops/MatrixIO;->printMatlab(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;)V

    goto :goto_3

    .line 702
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/ops/MatrixIO;->printTypeSize(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;)V

    const-wide v0, -0x400e3404ea4a8c15L    # -1.1123

    .line 704
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 705
    new-array v1, v0, [C

    const/16 v2, 0x20

    .line 706
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 707
    div-int/lit8 v0, v0, 0x2

    const/16 v2, 0x2a

    aput-char v2, v1, v0

    const/4 v0, 0x0

    move v2, v0

    .line 709
    :goto_0
    iget v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ge v2, v3, :cond_4

    move v3, v0

    .line 710
    :goto_1
    iget v4, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v3, v4, :cond_3

    .line 711
    invoke-virtual {p1, v2, v3}, Lorg/ejml/data/FMatrixSparseCSC;->nz_index(II)I

    move-result v4

    if-ltz v4, :cond_1

    .line 713
    iget-object v5, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v4, v5, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p2, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_2

    .line 715
    :cond_1
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print([C)V

    .line 716
    :goto_2
    iget v4, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_2

    const-string v4, " "

    .line 717
    invoke-virtual {p0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 719
    :cond_3
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public static print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrixSparseTriplet;Ljava/lang/String;)V
    .locals 5

    .line 742
    invoke-static {p0, p1}, Lorg/ejml/ops/MatrixIO;->printTypeSize(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;)V

    const/4 v0, 0x0

    move v1, v0

    .line 744
    :goto_0
    iget v2, p1, Lorg/ejml/data/FMatrixSparseTriplet;->numRows:I

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 745
    :goto_1
    iget v3, p1, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    if-ge v2, v3, :cond_2

    .line 746
    invoke-virtual {p1, v1, v2}, Lorg/ejml/data/FMatrixSparseTriplet;->nz_index(II)I

    move-result v3

    if-ltz v3, :cond_0

    .line 748
    iget-object v4, p1, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object v4, v4, Lorg/ejml/data/FGrowArray;->data:[F

    aget v3, v4, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_2

    :cond_0
    const-string v3, "   *  "

    .line 750
    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 751
    :goto_2
    iget v3, p1, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    const-string v3, " "

    .line 752
    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 754
    :cond_2
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static print(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;)V
    .locals 2

    .line 556
    sget-object v0, Lorg/ejml/ops/MatrixIO$1;->$SwitchMap$org$ejml$data$MatrixType:[I

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ejml/data/MatrixType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "%11.4E"

    packed-switch v0, :pswitch_data_0

    .line 590
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 586
    :pswitch_0
    check-cast p1, Lorg/ejml/data/FMatrixSparseTriplet;

    invoke-static {p0, p1, v1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrixSparseTriplet;Ljava/lang/String;)V

    goto :goto_0

    .line 582
    :pswitch_1
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-static {p0, p1, v1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrixSparseCSC;Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :pswitch_2
    check-cast p1, Lorg/ejml/data/DMatrixSparseTriplet;

    invoke-static {p0, p1, v1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrixSparseTriplet;Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :pswitch_3
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-static {p0, p1, v1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrixSparseCSC;Ljava/lang/String;)V

    goto :goto_0

    .line 570
    :pswitch_4
    check-cast p1, Lorg/ejml/data/CMatrix;

    invoke-static {p0, p1, v1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/CMatrix;Ljava/lang/String;)V

    goto :goto_0

    .line 566
    :pswitch_5
    check-cast p1, Lorg/ejml/data/ZMatrix;

    invoke-static {p0, p1, v1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/ZMatrix;Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :pswitch_6
    check-cast p1, Lorg/ejml/data/FMatrix;

    invoke-static {p0, p1, v1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :pswitch_7
    check-cast p1, Lorg/ejml/data/DMatrix;

    invoke-static {p0, p1, v1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static print(Ljava/io/PrintStream;Lorg/ejml/data/ZMatrix;Ljava/lang/String;)V
    .locals 7

    .line 855
    invoke-static {p0, p1}, Lorg/ejml/ops/MatrixIO;->printTypeSize(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;)V

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "i"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 859
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 860
    :goto_0
    invoke-interface {p1}, Lorg/ejml/data/ZMatrix;->getNumRows()I

    move-result v3

    if-ge v2, v3, :cond_2

    move v3, v1

    .line 861
    :goto_1
    invoke-interface {p1}, Lorg/ejml/data/ZMatrix;->getNumCols()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 862
    invoke-interface {p1, v2, v3, v0}, Lorg/ejml/data/ZMatrix;->get(IILorg/ejml/data/Complex_F64;)V

    .line 863
    iget-wide v4, v0, Lorg/ejml/data/Complex_F64;->real:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-wide v5, v0, Lorg/ejml/data/Complex_F64;->imaginary:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p2, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 864
    invoke-interface {p1}, Lorg/ejml/data/ZMatrix;->getNumCols()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    const-string v4, " , "

    .line 865
    invoke-virtual {p0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 868
    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static printFancy(Ljava/io/PrintStream;Lorg/ejml/data/CMatrix;I)V
    .locals 12

    .line 499
    invoke-static {p0, p1}, Lorg/ejml/ops/MatrixIO;->printTypeSize(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;)V

    .line 500
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 503
    invoke-interface {p1}, Lorg/ejml/data/CMatrix;->getNumCols()I

    move-result v2

    .line 505
    new-instance v3, Lorg/ejml/data/Complex_F32;

    invoke-direct {v3}, Lorg/ejml/data/Complex_F32;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 506
    :goto_0
    invoke-interface {p1}, Lorg/ejml/data/CMatrix;->getNumRows()I

    move-result v6

    if-ge v5, v6, :cond_2

    move v6, v4

    :goto_1
    if-ge v6, v2, :cond_1

    .line 508
    invoke-interface {p1, v5, v6, v3}, Lorg/ejml/data/CMatrix;->get(IILorg/ejml/data/Complex_F32;)V

    .line 509
    iget v7, v3, Lorg/ejml/data/Complex_F32;->real:F

    float-to-double v7, v7

    const/4 v9, 0x4

    invoke-static {v7, v8, v0, p2, v9}, Lorg/ejml/UtilEjml;->fancyString(DLjava/text/DecimalFormat;II)Ljava/lang/String;

    move-result-object v7

    .line 510
    iget v8, v3, Lorg/ejml/data/Complex_F32;->imaginary:F

    float-to-double v10, v8

    invoke-static {v10, v11, v0, p2, v9}, Lorg/ejml/UtilEjml;->fancyString(DLjava/text/DecimalFormat;II)Ljava/lang/String;

    move-result-object v8

    .line 511
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v7, p2, v7

    invoke-static {v1, v7}, Lorg/ejml/ops/MatrixIO;->padSpace(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 512
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v8, p2, v8

    invoke-static {v1, v8}, Lorg/ejml/ops/MatrixIO;->padSpace(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 514
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " + "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "i "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 515
    invoke-interface {p1}, Lorg/ejml/data/CMatrix;->getNumCols()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_0

    const-string v7, " , "

    .line 516
    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 519
    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public static printFancy(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;I)V
    .locals 8

    .line 442
    invoke-static {p0, p1}, Lorg/ejml/ops/MatrixIO;->printTypeSize(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;)V

    .line 443
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 445
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 447
    :goto_0
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v4

    if-ge v3, v4, :cond_2

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_1

    .line 449
    invoke-interface {p1, v3, v4}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    const/4 v7, 0x4

    invoke-static {v5, v6, v0, p2, v7}, Lorg/ejml/UtilEjml;->fancyStringF(DLjava/text/DecimalFormat;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v1, -0x1

    if-eq v4, v5, :cond_0

    const-string v5, " "

    .line 451
    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 453
    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static printFancy(Ljava/io/PrintStream;Lorg/ejml/data/DMatrixSparseCSC;I)V
    .locals 8

    .line 532
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-static {p0, p1}, Lorg/ejml/ops/MatrixIO;->printTypeSize(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;)V

    .line 535
    new-array v1, p2, [C

    const/16 v2, 0x20

    .line 536
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 537
    div-int/lit8 v2, p2, 0x2

    const/16 v3, 0x2a

    aput-char v3, v1, v2

    const/4 v2, 0x0

    move v3, v2

    .line 539
    :goto_0
    iget v4, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ge v3, v4, :cond_3

    move v4, v2

    .line 540
    :goto_1
    iget v5, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v4, v5, :cond_2

    .line 541
    invoke-virtual {p1, v3, v4}, Lorg/ejml/data/DMatrixSparseCSC;->nz_index(II)I

    move-result v5

    if-ltz v5, :cond_0

    .line 543
    iget-object v6, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v5, v6, v5

    const/4 v7, 0x4

    invoke-static {v5, v6, v0, p2, v7}, Lorg/ejml/UtilEjml;->fancyStringF(DLjava/text/DecimalFormat;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 545
    :cond_0
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print([C)V

    .line 546
    :goto_2
    iget v5, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_1

    const-string v5, " "

    .line 547
    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 549
    :cond_2
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static printFancy(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;I)V
    .locals 8

    .line 458
    invoke-static {p0, p1}, Lorg/ejml/ops/MatrixIO;->printTypeSize(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;)V

    .line 459
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 461
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 463
    :goto_0
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v4

    if-ge v3, v4, :cond_2

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_1

    .line 465
    invoke-interface {p1, v3, v4}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v5

    float-to-double v5, v5

    const/4 v7, 0x4

    invoke-static {v5, v6, v0, p2, v7}, Lorg/ejml/UtilEjml;->fancyStringF(DLjava/text/DecimalFormat;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v1, -0x1

    if-eq v4, v5, :cond_0

    const-string v5, " "

    .line 467
    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 469
    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static printFancy(Ljava/io/PrintStream;Lorg/ejml/data/ZMatrix;I)V
    .locals 12

    .line 474
    invoke-static {p0, p1}, Lorg/ejml/ops/MatrixIO;->printTypeSize(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;)V

    .line 475
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 478
    invoke-interface {p1}, Lorg/ejml/data/ZMatrix;->getNumCols()I

    move-result v2

    .line 480
    new-instance v3, Lorg/ejml/data/Complex_F64;

    invoke-direct {v3}, Lorg/ejml/data/Complex_F64;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 481
    :goto_0
    invoke-interface {p1}, Lorg/ejml/data/ZMatrix;->getNumRows()I

    move-result v6

    if-ge v5, v6, :cond_2

    move v6, v4

    :goto_1
    if-ge v6, v2, :cond_1

    .line 483
    invoke-interface {p1, v5, v6, v3}, Lorg/ejml/data/ZMatrix;->get(IILorg/ejml/data/Complex_F64;)V

    .line 484
    iget-wide v7, v3, Lorg/ejml/data/Complex_F64;->real:D

    const/4 v9, 0x4

    invoke-static {v7, v8, v0, p2, v9}, Lorg/ejml/UtilEjml;->fancyString(DLjava/text/DecimalFormat;II)Ljava/lang/String;

    move-result-object v7

    .line 485
    iget-wide v10, v3, Lorg/ejml/data/Complex_F64;->imaginary:D

    invoke-static {v10, v11, v0, p2, v9}, Lorg/ejml/UtilEjml;->fancyString(DLjava/text/DecimalFormat;II)Ljava/lang/String;

    move-result-object v8

    .line 486
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v7, p2, v7

    invoke-static {v1, v7}, Lorg/ejml/ops/MatrixIO;->padSpace(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 487
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "i"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v8, p2, v8

    invoke-static {v1, v8}, Lorg/ejml/ops/MatrixIO;->padSpace(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 489
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " + "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 490
    invoke-interface {p1}, Lorg/ejml/data/ZMatrix;->getNumCols()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_0

    const-string v7, " , "

    .line 491
    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 494
    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public static printJava(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;Ljava/lang/String;)V
    .locals 5

    .line 760
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/data/MatrixType;->getBits()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const-string v0, "double"

    goto :goto_0

    :cond_0
    const-string v0, "float"

    .line 762
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[][]{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 766
    :goto_1
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_4

    const-string/jumbo v2, "{"

    .line 767
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v2, v0

    .line 768
    :cond_1
    :goto_2
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 769
    invoke-interface {p1, v1, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v2, v2, 0x1

    .line 770
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-string v3, ", "

    .line 771
    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 773
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_3

    const-string/jumbo v2, "},"

    .line 774
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "}};"

    .line 776
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static printJava(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;Ljava/lang/String;)V
    .locals 4

    .line 819
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/data/MatrixType;->getBits()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const-string v0, "double"

    goto :goto_0

    :cond_0
    const-string v0, "float"

    .line 821
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[][]{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 825
    :goto_1
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_4

    const-string/jumbo v2, "{"

    .line 826
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v2, v0

    .line 827
    :cond_1
    :goto_2
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 828
    invoke-interface {p1, v1, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v2, v2, 0x1

    .line 829
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-string v3, ", "

    .line 830
    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 832
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_3

    const-string/jumbo v2, "},"

    .line 833
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "}};"

    .line 835
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static printMatlab(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;)V
    .locals 5

    const-string v0, "[ "

    .line 630
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 632
    :goto_0
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 633
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 634
    invoke-interface {p1, v1, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%.12E"

    invoke-virtual {p0, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v2, v2, 0x1

    .line 635
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_0

    const-string v3, " , "

    .line 636
    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 639
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_2

    const-string v2, " ;"

    .line 640
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, " ]"

    .line 642
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static printMatlab(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;)V
    .locals 5

    const-string v0, "[ "

    .line 648
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 650
    :goto_0
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 651
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 652
    sget-object v3, Lorg/ejml/ops/MatrixIO;->MATLAB_FORMAT:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v2, v2, 0x1

    .line 653
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_0

    const-string v3, " , "

    .line 654
    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 657
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_2

    const-string v2, " ;"

    .line 658
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, " ]"

    .line 660
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static printTypeSize(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;)V
    .locals 5

    .line 873
    instance-of v0, p1, Lorg/ejml/data/MatrixSparse;

    const-string v1, " , cols = "

    const-string v2, " , rows = "

    const-string v3, "Type = "

    if-eqz v0, :cond_0

    .line 874
    move-object v0, p1

    check-cast v0, Lorg/ejml/data/MatrixSparse;

    .line 875
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/ejml/ops/MatrixIO;->getMatrixType(Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 876
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " , nz_length = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0}, Lorg/ejml/data/MatrixSparse;->getNonZeroLength()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 875
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 878
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/ejml/ops/MatrixIO;->getMatrixType(Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static saveBin(Lorg/ejml/data/DMatrix;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 281
    new-instance p1, Ljava/io/ObjectOutputStream;

    invoke-direct {p1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 284
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 285
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 289
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 292
    throw p0

    :catchall_1
    move-exception p0

    .line 289
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 291
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 293
    throw p0

    :catchall_2
    move-exception p0

    .line 291
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 292
    throw p0
.end method

.method public static saveDenseCSV(Lorg/ejml/data/DMatrix;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/lang/String;)V

    .line 336
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " real"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    move v2, p1

    .line 337
    :goto_0
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v3

    if-ge v2, v3, :cond_1

    move v3, p1

    .line 338
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v2, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 341
    :cond_0
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    return-void
.end method

.method public static saveMatrixMarketD(Lorg/ejml/data/DMatrixSparse;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 5

    .line 101
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string p2, "% Matrix Market Coordinate file written by EJML 0.40"

    .line 102
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "% printf format used \'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    invoke-interface {p0}, Lorg/ejml/data/DMatrixSparse;->getNumRows()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0}, Lorg/ejml/data/DMatrixSparse;->getNumCols()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0}, Lorg/ejml/data/DMatrixSparse;->getNonZeroLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p2, v1, v2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "%9d %9d %9d\n"

    invoke-virtual {v0, v1, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "%9d %9d "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-interface {p0}, Lorg/ejml/data/DMatrixSparse;->createCoordinateIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 109
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 110
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;

    .line 112
    iget v1, p2, Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;->row:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p2, Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;->col:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p2, Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;->value:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {v1, v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public static saveMatrixMarketF(Lorg/ejml/data/FMatrixSparse;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 3

    .line 128
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string p2, "% Matrix Market Coordinate file written by EJML 0.40"

    .line 129
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "% printf format used \'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    invoke-interface {p0}, Lorg/ejml/data/FMatrixSparse;->getNumRows()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0}, Lorg/ejml/data/FMatrixSparse;->getNumCols()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0}, Lorg/ejml/data/FMatrixSparse;->getNonZeroLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p2, v1, v2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "%9d %9d %9d\n"

    invoke-virtual {v0, v1, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "%9d %9d "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p2, 0x0

    sget-object p2, Lcom/brakefield/painter/ui/cZ/JtBOMbAc;->VwvStUOYNNKY:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-interface {p0}, Lorg/ejml/data/FMatrixSparse;->createCoordinateIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 136
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 137
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;

    .line 139
    iget v1, p2, Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;->row:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p2, Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;->col:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p2, p2, Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;->value:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {v1, v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public static saveSparseCSV(Lorg/ejml/data/DMatrixSparseTriplet;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/lang/String;)V

    .line 358
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseTriplet;->getNumRows()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseTriplet;->getNumCols()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " real"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 359
    :goto_0
    iget v2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    if-ge p1, v2, :cond_0

    .line 360
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v2, v2, Lorg/ejml/data/IGrowArray;->data:[I

    mul-int/lit8 v3, p1, 0x2

    aget v2, v2, v3

    .line 361
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v4, v4, Lorg/ejml/data/IGrowArray;->data:[I

    add-int/lit8 v3, v3, 0x1

    aget v3, v4, v3

    .line 362
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    iget-object v4, v4, Lorg/ejml/data/DGrowArray;->data:[D

    aget-wide v4, v4, p1

    .line 364
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    return-void
.end method

.method public static saveSparseCSV(Lorg/ejml/data/FMatrixSparseTriplet;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/lang/String;)V

    .line 381
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseTriplet;->getNumRows()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseTriplet;->getNumCols()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " real"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 382
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    if-ge p1, v2, :cond_0

    .line 383
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v2, v2, Lorg/ejml/data/IGrowArray;->data:[I

    mul-int/lit8 v3, p1, 0x2

    aget v2, v2, v3

    .line 384
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v4, v4, Lorg/ejml/data/IGrowArray;->data:[I

    add-int/lit8 v3, v3, 0x1

    aget v3, v4, v3

    .line 385
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object v4, v4, Lorg/ejml/data/FGrowArray;->data:[F

    aget v4, v4, p1

    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 389
    :cond_0
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    return-void
.end method
