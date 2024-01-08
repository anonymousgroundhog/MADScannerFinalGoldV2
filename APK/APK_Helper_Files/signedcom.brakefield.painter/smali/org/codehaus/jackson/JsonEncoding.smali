.class public final enum Lorg/codehaus/jackson/JsonEncoding;
.super Ljava/lang/Enum;
.source "JsonEncoding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/codehaus/jackson/JsonEncoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codehaus/jackson/JsonEncoding;

.field public static final enum UTF16_BE:Lorg/codehaus/jackson/JsonEncoding;

.field public static final enum UTF16_LE:Lorg/codehaus/jackson/JsonEncoding;

.field public static final enum UTF32_BE:Lorg/codehaus/jackson/JsonEncoding;

.field public static final enum UTF32_LE:Lorg/codehaus/jackson/JsonEncoding;

.field public static final enum UTF8:Lorg/codehaus/jackson/JsonEncoding;


# instance fields
.field protected final _bigEndian:Z

.field protected final _javaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lorg/codehaus/jackson/JsonEncoding;

    const-string v1, "UTF-8"

    const-string v2, "UTF8"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lorg/codehaus/jackson/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    .line 15
    new-instance v1, Lorg/codehaus/jackson/JsonEncoding;

    const-string v2, "UTF-16BE"

    const-string v4, "UTF16_BE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v5}, Lorg/codehaus/jackson/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lorg/codehaus/jackson/JsonEncoding;->UTF16_BE:Lorg/codehaus/jackson/JsonEncoding;

    .line 16
    new-instance v2, Lorg/codehaus/jackson/JsonEncoding;

    const/4 v4, 0x2

    const-string v6, "UTF-16LE"

    const-string v7, "UTF16_LE"

    invoke-direct {v2, v7, v4, v6, v3}, Lorg/codehaus/jackson/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, Lorg/codehaus/jackson/JsonEncoding;->UTF16_LE:Lorg/codehaus/jackson/JsonEncoding;

    .line 17
    new-instance v4, Lorg/codehaus/jackson/JsonEncoding;

    const/4 v6, 0x3

    const-string v7, "UTF-32BE"

    const-string v8, "UTF32_BE"

    invoke-direct {v4, v8, v6, v7, v5}, Lorg/codehaus/jackson/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lorg/codehaus/jackson/JsonEncoding;->UTF32_BE:Lorg/codehaus/jackson/JsonEncoding;

    .line 18
    new-instance v5, Lorg/codehaus/jackson/JsonEncoding;

    const/4 v6, 0x4

    const-string v7, "UTF-32LE"

    const-string v8, "UTF32_LE"

    invoke-direct {v5, v8, v6, v7, v3}, Lorg/codehaus/jackson/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v5, Lorg/codehaus/jackson/JsonEncoding;->UTF32_LE:Lorg/codehaus/jackson/JsonEncoding;

    .line 13
    filled-new-array {v0, v1, v2, v4, v5}, [Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/JsonEncoding;->$VALUES:[Lorg/codehaus/jackson/JsonEncoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lorg/codehaus/jackson/JsonEncoding;->_javaName:Ljava/lang/String;

    .line 28
    iput-boolean p4, p0, Lorg/codehaus/jackson/JsonEncoding;->_bigEndian:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/jackson/JsonEncoding;
    .locals 1

    .line 13
    const-class v0, Lorg/codehaus/jackson/JsonEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/JsonEncoding;

    return-object p0
.end method

.method public static values()[Lorg/codehaus/jackson/JsonEncoding;
    .locals 1

    .line 13
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->$VALUES:[Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v0}, [Lorg/codehaus/jackson/JsonEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/JsonEncoding;

    return-object v0
.end method


# virtual methods
.method public getJavaName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/codehaus/jackson/JsonEncoding;->_javaName:Ljava/lang/String;

    return-object v0
.end method

.method public isBigEndian()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lorg/codehaus/jackson/JsonEncoding;->_bigEndian:Z

    return v0
.end method
