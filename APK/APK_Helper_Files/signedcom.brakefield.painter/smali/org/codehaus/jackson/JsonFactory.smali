.class public Lorg/codehaus/jackson/JsonFactory;
.super Ljava/lang/Object;
.source "JsonFactory.java"

# interfaces
.implements Lorg/codehaus/jackson/Versioned;


# static fields
.field static final DEFAULT_GENERATOR_FEATURE_FLAGS:I

.field static final DEFAULT_PARSER_FEATURE_FLAGS:I

.field public static final FORMAT_NAME_JSON:Ljava/lang/String; = "JSON"

.field protected static final _recyclerRef:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "Lorg/codehaus/jackson/util/BufferRecycler;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

.field protected _generatorFeatures:I

.field protected _inputDecorator:Lorg/codehaus/jackson/io/InputDecorator;

.field protected _objectCodec:Lorg/codehaus/jackson/ObjectCodec;

.field protected _outputDecorator:Lorg/codehaus/jackson/io/OutputDecorator;

.field protected _parserFeatures:I

.field protected _rootByteSymbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

.field protected _rootCharSymbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    invoke-static {}, Lorg/codehaus/jackson/JsonParser$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/JsonFactory;->DEFAULT_PARSER_FEATURE_FLAGS:I

    .line 71
    invoke-static {}, Lorg/codehaus/jackson/JsonGenerator$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/JsonFactory;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    .line 84
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/JsonFactory;->_recyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/JsonFactory;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/ObjectCodec;)V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->createRoot()Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/JsonFactory;->_rootCharSymbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    .line 101
    invoke-static {}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->createRoot()Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/JsonFactory;->_rootByteSymbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 121
    sget v0, Lorg/codehaus/jackson/JsonFactory;->DEFAULT_PARSER_FEATURE_FLAGS:I

    iput v0, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    .line 126
    sget v0, Lorg/codehaus/jackson/JsonFactory;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    iput v0, p0, Lorg/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    .line 171
    iput-object p1, p0, Lorg/codehaus/jackson/JsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    return-void
.end method


# virtual methods
.method protected _createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;
    .locals 2

    .line 894
    new-instance v0, Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonFactory;->_getBufferRecycler()Lorg/codehaus/jackson/util/BufferRecycler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/codehaus/jackson/io/IOContext;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method protected _createJsonGenerator(Ljava/io/Writer;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 845
    new-instance v0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;

    iget v1, p0, Lorg/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    iget-object v2, p0, Lorg/codehaus/jackson/JsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    invoke-direct {v0, p2, v1, v2, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;-><init>(Lorg/codehaus/jackson/io/IOContext;ILorg/codehaus/jackson/ObjectCodec;Ljava/io/Writer;)V

    .line 846
    iget-object p1, p0, Lorg/codehaus/jackson/JsonFactory;->_characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

    if-eqz p1, :cond_0

    .line 847
    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->setCharacterEscapes(Lorg/codehaus/jackson/io/CharacterEscapes;)Lorg/codehaus/jackson/JsonGenerator;

    :cond_0
    return-object v0
.end method

.method protected _createJsonParser(Ljava/io/InputStream;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 785
    new-instance v0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;

    invoke-direct {v0, p2, p1}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;-><init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;)V

    iget p1, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    iget-object p2, p0, Lorg/codehaus/jackson/JsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    iget-object v1, p0, Lorg/codehaus/jackson/JsonFactory;->_rootByteSymbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    iget-object v2, p0, Lorg/codehaus/jackson/JsonFactory;->_rootCharSymbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->constructParser(ILorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)Lorg/codehaus/jackson/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method protected _createJsonParser(Ljava/io/Reader;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 802
    new-instance v6, Lorg/codehaus/jackson/impl/ReaderBasedParser;

    iget v2, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    iget-object v4, p0, Lorg/codehaus/jackson/JsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    iget-object v0, p0, Lorg/codehaus/jackson/JsonFactory;->_rootCharSymbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonFactory;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    sget-object v3, Lorg/codehaus/jackson/JsonParser$Feature;->INTERN_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/JsonFactory;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->makeChild(ZZ)Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v5

    move-object v0, v6

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/ReaderBasedParser;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V

    return-object v6
.end method

.method protected _createJsonParser([BIILorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 821
    new-instance v0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;

    invoke-direct {v0, p4, p1, p2, p3}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;-><init>(Lorg/codehaus/jackson/io/IOContext;[BII)V

    iget p1, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    iget-object p2, p0, Lorg/codehaus/jackson/JsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    iget-object p3, p0, Lorg/codehaus/jackson/JsonFactory;->_rootByteSymbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    iget-object p4, p0, Lorg/codehaus/jackson/JsonFactory;->_rootCharSymbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->constructParser(ILorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)Lorg/codehaus/jackson/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method protected _createUTF8JsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 865
    new-instance v0, Lorg/codehaus/jackson/impl/Utf8Generator;

    iget v1, p0, Lorg/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    iget-object v2, p0, Lorg/codehaus/jackson/JsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    invoke-direct {v0, p2, v1, v2, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;-><init>(Lorg/codehaus/jackson/io/IOContext;ILorg/codehaus/jackson/ObjectCodec;Ljava/io/OutputStream;)V

    .line 866
    iget-object p1, p0, Lorg/codehaus/jackson/JsonFactory;->_characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

    if-eqz p1, :cond_0

    .line 867
    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->setCharacterEscapes(Lorg/codehaus/jackson/io/CharacterEscapes;)Lorg/codehaus/jackson/JsonGenerator;

    :cond_0
    return-object v0
.end method

.method protected _createWriter(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;Lorg/codehaus/jackson/io/IOContext;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 875
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    if-ne p2, v0, :cond_0

    .line 876
    new-instance p2, Lorg/codehaus/jackson/io/UTF8Writer;

    invoke-direct {p2, p3, p1}, Lorg/codehaus/jackson/io/UTF8Writer;-><init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/OutputStream;)V

    return-object p2

    .line 879
    :cond_0
    new-instance p3, Ljava/io/OutputStreamWriter;

    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object p3
.end method

.method public _getBufferRecycler()Lorg/codehaus/jackson/util/BufferRecycler;
    .locals 3

    .line 905
    sget-object v0, Lorg/codehaus/jackson/JsonFactory;->_recyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 906
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/util/BufferRecycler;

    :goto_0
    if-nez v1, :cond_1

    .line 909
    new-instance v1, Lorg/codehaus/jackson/util/BufferRecycler;

    invoke-direct {v1}, Lorg/codehaus/jackson/util/BufferRecycler;-><init>()V

    .line 910
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method protected _optimizedStreamFromURL(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file"

    .line 923
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 932
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 935
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public final configure(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)Lorg/codehaus/jackson/JsonFactory;
    .locals 0

    if-eqz p2, :cond_0

    .line 347
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->enable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonFactory;

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->disable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonFactory;

    :goto_0
    return-object p0
.end method

.method public final configure(Lorg/codehaus/jackson/JsonParser$Feature;Z)Lorg/codehaus/jackson/JsonFactory;
    .locals 0

    if-eqz p2, :cond_0

    .line 241
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->enable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonFactory;

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->disable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonFactory;

    :goto_0
    return-object p0
.end method

.method public createJsonGenerator(Ljava/io/File;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 746
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 p1, 0x1

    .line 748
    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object p1

    .line 749
    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/io/IOContext;->setEncoding(Lorg/codehaus/jackson/JsonEncoding;)V

    .line 750
    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    if-ne p2, v1, :cond_1

    .line 752
    iget-object p2, p0, Lorg/codehaus/jackson/JsonFactory;->_outputDecorator:Lorg/codehaus/jackson/io/OutputDecorator;

    if-eqz p2, :cond_0

    .line 753
    invoke-virtual {p2, p1, v0}, Lorg/codehaus/jackson/io/OutputDecorator;->decorate(Lorg/codehaus/jackson/io/IOContext;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 755
    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/JsonFactory;->_createUTF8JsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object p1

    return-object p1

    .line 757
    :cond_1
    invoke-virtual {p0, v0, p2, p1}, Lorg/codehaus/jackson/JsonFactory;->_createWriter(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;Lorg/codehaus/jackson/io/IOContext;)Ljava/io/Writer;

    move-result-object p2

    .line 759
    iget-object v0, p0, Lorg/codehaus/jackson/JsonFactory;->_outputDecorator:Lorg/codehaus/jackson/io/OutputDecorator;

    if-eqz v0, :cond_2

    .line 760
    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/io/OutputDecorator;->decorate(Lorg/codehaus/jackson/io/IOContext;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object p2

    .line 762
    :cond_2
    invoke-virtual {p0, p2, p1}, Lorg/codehaus/jackson/JsonFactory;->_createJsonGenerator(Ljava/io/Writer;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object p1

    return-object p1
.end method

.method public createJsonGenerator(Ljava/io/OutputStream;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object p1

    return-object p1
.end method

.method public createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 676
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 677
    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/io/IOContext;->setEncoding(Lorg/codehaus/jackson/JsonEncoding;)V

    .line 678
    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    if-ne p2, v1, :cond_1

    .line 680
    iget-object p2, p0, Lorg/codehaus/jackson/JsonFactory;->_outputDecorator:Lorg/codehaus/jackson/io/OutputDecorator;

    if-eqz p2, :cond_0

    .line 681
    invoke-virtual {p2, v0, p1}, Lorg/codehaus/jackson/io/OutputDecorator;->decorate(Lorg/codehaus/jackson/io/IOContext;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    .line 683
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createUTF8JsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object p1

    return-object p1

    .line 685
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/JsonFactory;->_createWriter(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;Lorg/codehaus/jackson/io/IOContext;)Ljava/io/Writer;

    move-result-object p1

    .line 687
    iget-object p2, p0, Lorg/codehaus/jackson/JsonFactory;->_outputDecorator:Lorg/codehaus/jackson/io/OutputDecorator;

    if-eqz p2, :cond_2

    .line 688
    invoke-virtual {p2, v0, p1}, Lorg/codehaus/jackson/io/OutputDecorator;->decorate(Lorg/codehaus/jackson/io/IOContext;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object p1

    .line 690
    :cond_2
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createJsonGenerator(Ljava/io/Writer;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object p1

    return-object p1
.end method

.method public createJsonGenerator(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 709
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lorg/codehaus/jackson/JsonFactory;->_outputDecorator:Lorg/codehaus/jackson/io/OutputDecorator;

    if-eqz v1, :cond_0

    .line 712
    invoke-virtual {v1, v0, p1}, Lorg/codehaus/jackson/io/OutputDecorator;->decorate(Lorg/codehaus/jackson/io/IOContext;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object p1

    .line 714
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createJsonGenerator(Ljava/io/Writer;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object p1

    return-object p1
.end method

.method public createJsonParser(Ljava/io/File;)Lorg/codehaus/jackson/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 503
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 504
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 506
    iget-object p1, p0, Lorg/codehaus/jackson/JsonFactory;->_inputDecorator:Lorg/codehaus/jackson/io/InputDecorator;

    if-eqz p1, :cond_0

    .line 507
    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/io/InputDecorator;->decorate(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    .line 509
    :cond_0
    invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/InputStream;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 556
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lorg/codehaus/jackson/JsonFactory;->_inputDecorator:Lorg/codehaus/jackson/io/InputDecorator;

    if-eqz v1, :cond_0

    .line 559
    invoke-virtual {v1, v0, p1}, Lorg/codehaus/jackson/io/InputDecorator;->decorate(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    .line 561
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/InputStream;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createJsonParser(Ljava/io/Reader;)Lorg/codehaus/jackson/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 581
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lorg/codehaus/jackson/JsonFactory;->_inputDecorator:Lorg/codehaus/jackson/io/InputDecorator;

    if-eqz v1, :cond_0

    .line 584
    invoke-virtual {v1, v0, p1}, Lorg/codehaus/jackson/io/InputDecorator;->decorate(Lorg/codehaus/jackson/io/IOContext;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object p1

    .line 586
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/Reader;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 636
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 638
    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object p1

    .line 640
    iget-object v1, p0, Lorg/codehaus/jackson/JsonFactory;->_inputDecorator:Lorg/codehaus/jackson/io/InputDecorator;

    if-eqz v1, :cond_0

    .line 641
    invoke-virtual {v1, p1, v0}, Lorg/codehaus/jackson/io/InputDecorator;->decorate(Lorg/codehaus/jackson/io/IOContext;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v0

    .line 643
    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/Reader;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createJsonParser(Ljava/net/URL;)Lorg/codehaus/jackson/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 529
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 530
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->_optimizedStreamFromURL(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p1

    .line 532
    iget-object v1, p0, Lorg/codehaus/jackson/JsonFactory;->_inputDecorator:Lorg/codehaus/jackson/io/InputDecorator;

    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {v1, v0, p1}, Lorg/codehaus/jackson/io/InputDecorator;->decorate(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    .line 535
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/InputStream;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createJsonParser([B)Lorg/codehaus/jackson/JsonParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 596
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 598
    iget-object v1, p0, Lorg/codehaus/jackson/JsonFactory;->_inputDecorator:Lorg/codehaus/jackson/io/InputDecorator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 599
    array-length v3, p1

    invoke-virtual {v1, v0, p1, v2, v3}, Lorg/codehaus/jackson/io/InputDecorator;->decorate(Lorg/codehaus/jackson/io/IOContext;[BII)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 601
    invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/InputStream;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;

    move-result-object p1

    return-object p1

    .line 604
    :cond_0
    array-length v1, p1

    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createJsonParser([BIILorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createJsonParser([BII)Lorg/codehaus/jackson/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 618
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 620
    iget-object v1, p0, Lorg/codehaus/jackson/JsonFactory;->_inputDecorator:Lorg/codehaus/jackson/io/InputDecorator;

    if-eqz v1, :cond_0

    .line 621
    invoke-virtual {v1, v0, p1, p2, p3}, Lorg/codehaus/jackson/io/InputDecorator;->decorate(Lorg/codehaus/jackson/io/IOContext;[BII)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 623
    invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/InputStream;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;

    move-result-object p1

    return-object p1

    .line 626
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/JsonFactory;->_createJsonParser([BIILorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public disable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonFactory;
    .locals 1

    .line 373
    iget v0, p0, Lorg/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lorg/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    return-object p0
.end method

.method public disable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonFactory;
    .locals 1

    .line 266
    iget v0, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    return-object p0
.end method

.method public final disableGeneratorFeature(Lorg/codehaus/jackson/JsonGenerator$Feature;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 401
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->disable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonFactory;

    return-void
.end method

.method public final disableParserFeature(Lorg/codehaus/jackson/JsonParser$Feature;)V
    .locals 0

    .line 294
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->disable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonFactory;

    return-void
.end method

.method public enable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonFactory;
    .locals 1

    .line 362
    iget v0, p0, Lorg/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lorg/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    return-object p0
.end method

.method public enable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonFactory;
    .locals 1

    .line 255
    iget v0, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    return-object p0
.end method

.method public final enableGeneratorFeature(Lorg/codehaus/jackson/JsonGenerator$Feature;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 393
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->enable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonFactory;

    return-void
.end method

.method public final enableParserFeature(Lorg/codehaus/jackson/JsonParser$Feature;)V
    .locals 0

    .line 286
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->enable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonFactory;

    return-void
.end method

.method public getCharacterEscapes()Lorg/codehaus/jackson/io/CharacterEscapes;
    .locals 1

    .line 427
    iget-object v0, p0, Lorg/codehaus/jackson/JsonFactory;->_characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

    return-object v0
.end method

.method public getCodec()Lorg/codehaus/jackson/ObjectCodec;
    .locals 1

    .line 479
    iget-object v0, p0, Lorg/codehaus/jackson/JsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 2

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/codehaus/jackson/JsonFactory;

    if-ne v0, v1, :cond_0

    const-string v0, "JSON"

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputDecorator()Lorg/codehaus/jackson/io/InputDecorator;
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/codehaus/jackson/JsonFactory;->_inputDecorator:Lorg/codehaus/jackson/io/InputDecorator;

    return-object v0
.end method

.method public getOutputDecorator()Lorg/codehaus/jackson/io/OutputDecorator;
    .locals 1

    .line 448
    iget-object v0, p0, Lorg/codehaus/jackson/JsonFactory;->_outputDecorator:Lorg/codehaus/jackson/io/OutputDecorator;

    return-object v0
.end method

.method public hasFormat(Lorg/codehaus/jackson/format/InputAccessor;)Lorg/codehaus/jackson/format/MatchStrength;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/codehaus/jackson/JsonFactory;

    if-ne v0, v1, :cond_0

    .line 204
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->hasJSONFormat(Lorg/codehaus/jackson/format/InputAccessor;)Lorg/codehaus/jackson/format/MatchStrength;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected hasJSONFormat(Lorg/codehaus/jackson/format/InputAccessor;)Lorg/codehaus/jackson/format/MatchStrength;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    invoke-static {p1}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->hasJSONFormat(Lorg/codehaus/jackson/format/InputAccessor;)Lorg/codehaus/jackson/format/MatchStrength;

    move-result-object p1

    return-object p1
.end method

.method public final isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 1

    .line 383
    iget v0, p0, Lorg/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z
    .locals 1

    .line 276
    iget v0, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isGeneratorFeatureEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 417
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonFactory;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result p1

    return p1
.end method

.method public final isParserFeatureEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z
    .locals 1

    .line 310
    iget v0, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setCharacterEscapes(Lorg/codehaus/jackson/io/CharacterEscapes;)Lorg/codehaus/jackson/JsonFactory;
    .locals 0

    .line 437
    iput-object p1, p0, Lorg/codehaus/jackson/JsonFactory;->_characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

    return-object p0
.end method

.method public setCodec(Lorg/codehaus/jackson/ObjectCodec;)Lorg/codehaus/jackson/JsonFactory;
    .locals 0

    .line 475
    iput-object p1, p0, Lorg/codehaus/jackson/JsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    return-object p0
.end method

.method public final setGeneratorFeature(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 409
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/JsonFactory;->configure(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)Lorg/codehaus/jackson/JsonFactory;

    return-void
.end method

.method public setInputDecorator(Lorg/codehaus/jackson/io/InputDecorator;)Lorg/codehaus/jackson/JsonFactory;
    .locals 0

    .line 329
    iput-object p1, p0, Lorg/codehaus/jackson/JsonFactory;->_inputDecorator:Lorg/codehaus/jackson/io/InputDecorator;

    return-object p0
.end method

.method public setOutputDecorator(Lorg/codehaus/jackson/io/OutputDecorator;)Lorg/codehaus/jackson/JsonFactory;
    .locals 0

    .line 457
    iput-object p1, p0, Lorg/codehaus/jackson/JsonFactory;->_outputDecorator:Lorg/codehaus/jackson/io/OutputDecorator;

    return-object p0
.end method

.method public final setParserFeature(Lorg/codehaus/jackson/JsonParser$Feature;Z)V
    .locals 0

    .line 302
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/JsonFactory;->configure(Lorg/codehaus/jackson/JsonParser$Feature;Z)Lorg/codehaus/jackson/JsonFactory;

    return-void
.end method

.method public version()Lorg/codehaus/jackson/Version;
    .locals 1

    .line 223
    const-class v0, Lorg/codehaus/jackson/impl/Utf8Generator;

    invoke-static {v0}, Lorg/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lorg/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method
