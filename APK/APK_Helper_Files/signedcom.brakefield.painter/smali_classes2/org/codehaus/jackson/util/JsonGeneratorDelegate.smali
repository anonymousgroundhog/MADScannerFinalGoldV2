.class public Lorg/codehaus/jackson/util/JsonGeneratorDelegate;
.super Lorg/codehaus/jackson/JsonGenerator;
.source "JsonGeneratorDelegate.java"


# instance fields
.field protected delegate:Lorg/codehaus/jackson/JsonGenerator;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/codehaus/jackson/JsonGenerator;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    return-void
.end method


# virtual methods
.method public canUseSchema(Lorg/codehaus/jackson/FormatSchema;)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->canUseSchema(Lorg/codehaus/jackson/FormatSchema;)Z

    move-result p1

    return p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    return-void
.end method

.method public copyCurrentEvent(Lorg/codehaus/jackson/JsonParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->copyCurrentEvent(Lorg/codehaus/jackson/JsonParser;)V

    return-void
.end method

.method public copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    return-void
.end method

.method public disable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->disable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object p1

    return-object p1
.end method

.method public enable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->enable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object p1

    return-object p1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->flush()V

    return-void
.end method

.method public getCodec()Lorg/codehaus/jackson/ObjectCodec;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v0

    return-object v0
.end method

.method public getOutputContext()Lorg/codehaus/jackson/JsonStreamContext;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->getOutputContext()Lorg/codehaus/jackson/JsonStreamContext;

    move-result-object v0

    return-object v0
.end method

.method public getOutputTarget()Ljava/lang/Object;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->getOutputTarget()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result p1

    return p1
.end method

.method public setCodec(Lorg/codehaus/jackson/ObjectCodec;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->setCodec(Lorg/codehaus/jackson/ObjectCodec;)Lorg/codehaus/jackson/JsonGenerator;

    return-object p0
.end method

.method public setSchema(Lorg/codehaus/jackson/FormatSchema;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->setSchema(Lorg/codehaus/jackson/FormatSchema;)V

    return-void
.end method

.method public useDefaultPrettyPrinter()Lorg/codehaus/jackson/JsonGenerator;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->useDefaultPrettyPrinter()Lorg/codehaus/jackson/JsonGenerator;

    return-object p0
.end method

.method public version()Lorg/codehaus/jackson/Version;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->version()Lorg/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method

.method public writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/codehaus/jackson/JsonGenerator;->writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    return-void
.end method

.method public writeEndArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->writeEndArray()V

    return-void
.end method

.method public writeEndObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V

    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    return-void
.end method

.method public writeFieldName(Lorg/codehaus/jackson/SerializableString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Lorg/codehaus/jackson/SerializableString;)V

    return-void
.end method

.method public writeFieldName(Lorg/codehaus/jackson/io/SerializedString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Lorg/codehaus/jackson/io/SerializedString;)V

    return-void
.end method

.method public writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->writeNull()V

    return-void
.end method

.method public writeNumber(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(D)V

    return-void
.end method

.method public writeNumber(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(F)V

    return-void
.end method

.method public writeNumber(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    return-void
.end method

.method public writeNumber(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    return-void
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/lang/String;)V

    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public writeRaw(C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;II)V

    return-void
.end method

.method public writeRaw([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw([CII)V

    return-void
.end method

.method public writeRawUTF8String([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/JsonGenerator;->writeRawUTF8String([BII)V

    return-void
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeRawValue(Ljava/lang/String;)V

    return-void
.end method

.method public writeRawValue(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/JsonGenerator;->writeRawValue(Ljava/lang/String;II)V

    return-void
.end method

.method public writeRawValue([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/JsonGenerator;->writeRawValue([CII)V

    return-void
.end method

.method public writeStartArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->writeStartArray()V

    return-void
.end method

.method public writeStartObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeString(Lorg/codehaus/jackson/SerializableString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Lorg/codehaus/jackson/SerializableString;)V

    return-void
.end method

.method public writeString([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/JsonGenerator;->writeString([CII)V

    return-void
.end method

.method public writeTree(Lorg/codehaus/jackson/JsonNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeTree(Lorg/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public writeUTF8String([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/JsonGenerator;->writeUTF8String([BII)V

    return-void
.end method
