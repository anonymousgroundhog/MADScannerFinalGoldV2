.class Lcom/google/api/client/extensions/android/json/AndroidJsonParser;
.super Lcom/google/api/client/json/JsonParser;
.source "AndroidJsonParser.java"


# instance fields
.field private currentNameStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentText:Ljava/lang/String;

.field private currentToken:Lcom/google/api/client/json/JsonToken;

.field private final factory:Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

.field private final reader:Landroid/util/JsonReader;


# direct methods
.method constructor <init>(Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;Landroid/util/JsonReader;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentNameStack:Ljava/util/List;

    .line 52
    iput-object p1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->factory:Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    .line 53
    iput-object p2, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    const/4 p1, 0x1

    .line 55
    invoke-virtual {p2, p1}, Landroid/util/JsonReader;->setLenient(Z)V

    return-void
.end method

.method private checkNumber()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    sget-object v1, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_INT:Lcom/google/api/client/json/JsonToken;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    sget-object v1, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/google/api/client/json/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    return-void
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    .line 105
    invoke-direct {p0}, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->checkNumber()V

    .line 106
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getByteValue()B
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->checkNumber()V

    .line 81
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getCurrentToken()Lcom/google/api/client/json/JsonToken;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 2

    .line 111
    invoke-direct {p0}, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->checkNumber()V

    .line 112
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .line 117
    invoke-direct {p0}, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->checkNumber()V

    .line 118
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->factory:Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    return-object v0
.end method

.method public getFloatValue()F
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->checkNumber()V

    .line 100
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getIntValue()I
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->checkNumber()V

    .line 94
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLongValue()J
    .locals 2

    .line 123
    invoke-direct {p0}, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->checkNumber()V

    .line 124
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShortValue()S
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->checkNumber()V

    .line 87
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    return-object v0
.end method

.method public nextToken()Lcom/google/api/client/json/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 140
    sget-object v0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser$1;->$SwitchMap$com$google$api$client$json$JsonToken:[I

    iget-object v3, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    invoke-virtual {v3}, Lcom/google/api/client/json/JsonToken;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 147
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V

    .line 143
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 159
    :catch_0
    sget-object v0, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    .line 161
    :goto_1
    sget-object v3, Lcom/google/api/client/extensions/android/json/AndroidJsonParser$1;->$SwitchMap$android$util$JsonToken:[I

    invoke-virtual {v0}, Landroid/util/JsonToken;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 211
    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 212
    iput-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto/16 :goto_3

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 207
    sget-object v0, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    .line 208
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 201
    :pswitch_1
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    const/16 v1, 0x2e

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_INT:Lcom/google/api/client/json/JsonToken;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/google/api/client/json/JsonToken;

    :goto_2
    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto/16 :goto_3

    .line 197
    :pswitch_2
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 198
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_STRING:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    :pswitch_3
    const-string v0, "null"

    .line 192
    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 193
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_NULL:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    .line 194
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextNull()V

    goto :goto_3

    .line 183
    :pswitch_4
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "true"

    .line 184
    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 185
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_TRUE:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    :cond_4
    const-string v0, "false"

    .line 187
    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 188
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_FALSE:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    :pswitch_5
    const-string v0, "}"

    .line 177
    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 178
    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    .line 179
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_3

    :pswitch_6
    const-string v0, "{"

    .line 173
    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 174
    sget-object v0, Lcom/google/api/client/json/JsonToken;->START_OBJECT:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    :pswitch_7
    const-string v0, "]"

    .line 167
    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 168
    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_ARRAY:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    .line 169
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_3

    :pswitch_8
    const-string v0, "["

    .line 163
    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 164
    sget-object v0, Lcom/google/api/client/json/JsonToken;->START_ARRAY:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    .line 214
    :goto_3
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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

.method public skipChildren()Lcom/google/api/client/json/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    if-eqz v0, :cond_2

    .line 220
    sget-object v0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser$1;->$SwitchMap$com$google$api$client$json$JsonToken:[I

    iget-object v1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    invoke-virtual {v1}, Lcom/google/api/client/json/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    const-string v0, "}"

    .line 228
    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 229
    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->reader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    const-string v0, "]"

    .line 223
    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentText:Ljava/lang/String;

    .line 224
    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_ARRAY:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    :cond_2
    :goto_0
    return-object p0
.end method
