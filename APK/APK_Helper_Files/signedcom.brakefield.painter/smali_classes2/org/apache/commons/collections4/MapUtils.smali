.class public Lorg/apache/commons/collections4/MapUtils;
.super Ljava/lang/Object;
.source "MapUtils.java"


# static fields
.field public static final EMPTY_SORTED_MAP:Ljava/util/SortedMap;

.field private static final INDENT_STRING:Ljava/lang/String; = "    "


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 87
    invoke-static {v0}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections4/MapUtils;->EMPTY_SORTED_MAP:Ljava/util/SortedMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugPrint(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 944
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/collections4/MapUtils;->verbosePrintInternal(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Deque;Z)V

    return-void
.end method

.method public static emptyIfNull(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1200
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static fixedSizeMap(Ljava/util/Map;)Lorg/apache/commons/collections4/IterableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/IterableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1338
    invoke-static {p0}, Lorg/apache/commons/collections4/map/FixedSizeMap;->fixedSizeMap(Ljava/util/Map;)Lorg/apache/commons/collections4/map/FixedSizeMap;

    move-result-object p0

    return-object p0
.end method

.method public static fixedSizeSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1603
    invoke-static {p0}, Lorg/apache/commons/collections4/map/FixedSizeSortedMap;->fixedSizeSortedMap(Ljava/util/SortedMap;)Lorg/apache/commons/collections4/map/FixedSizeSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static getBoolean(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 154
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 156
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 157
    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 159
    :cond_0
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 160
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 162
    :cond_1
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_3

    .line 163
    check-cast p0, Ljava/lang/Number;

    .line 164
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBoolean(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 409
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getBoolean(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static getBooleanValue(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)Z"
        }
    .end annotation

    .line 594
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getBoolean(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getBooleanValue(Ljava/util/Map;Ljava/lang/Object;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;Z)Z"
        }
    .end annotation

    .line 725
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getBoolean(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    .line 729
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static getByte(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)",
            "Ljava/lang/Byte;"
        }
    .end annotation

    .line 216
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 220
    :cond_0
    instance-of p1, p0, Ljava/lang/Byte;

    if-eqz p1, :cond_1

    .line 221
    check-cast p0, Ljava/lang/Byte;

    return-object p0

    .line 223
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public static getByte(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Byte;)Ljava/lang/Byte;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;",
            "Ljava/lang/Byte;",
            ")",
            "Ljava/lang/Byte;"
        }
    .end annotation

    .line 449
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getByte(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static getByteValue(Ljava/util/Map;Ljava/lang/Object;)B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)B"
        }
    .end annotation

    .line 608
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getByte(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 612
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public static getByteValue(Ljava/util/Map;Ljava/lang/Object;B)B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;B)B"
        }
    .end annotation

    .line 745
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getByte(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    .line 749
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public static getDouble(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Double;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    .line 321
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 325
    :cond_0
    instance-of p1, p0, Ljava/lang/Double;

    if-eqz p1, :cond_1

    .line 326
    check-cast p0, Ljava/lang/Double;

    return-object p0

    .line 328
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static getDouble(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;",
            "Ljava/lang/Double;",
            ")",
            "Ljava/lang/Double;"
        }
    .end annotation

    .line 549
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getDouble(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static getDoubleValue(Ljava/util/Map;Ljava/lang/Object;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)D"
        }
    .end annotation

    .line 698
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getDouble(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 702
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static getDoubleValue(Ljava/util/Map;Ljava/lang/Object;D)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;D)D"
        }
    .end annotation

    .line 845
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getDouble(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 849
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static getFloat(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 300
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 304
    :cond_0
    instance-of p1, p0, Ljava/lang/Float;

    if-eqz p1, :cond_1

    .line 305
    check-cast p0, Ljava/lang/Float;

    return-object p0

    .line 307
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static getFloat(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;",
            "Ljava/lang/Float;",
            ")",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 529
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getFloat(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static getFloatValue(Ljava/util/Map;Ljava/lang/Object;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)F"
        }
    .end annotation

    .line 680
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getFloat(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 684
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getFloatValue(Ljava/util/Map;Ljava/lang/Object;F)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;F)F"
        }
    .end annotation

    .line 825
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getFloat(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    .line 829
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getIntValue(Ljava/util/Map;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)I"
        }
    .end annotation

    .line 644
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 648
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getIntValue(Ljava/util/Map;Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;I)I"
        }
    .end annotation

    .line 785
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    .line 789
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 258
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 262
    :cond_0
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 263
    check-cast p0, Ljava/lang/Integer;

    return-object p0

    .line 265
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getInteger(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 489
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static getLong(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 279
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 283
    :cond_0
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 284
    check-cast p0, Ljava/lang/Long;

    return-object p0

    .line 286
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static getLong(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 509
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getLong(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static getLongValue(Ljava/util/Map;Ljava/lang/Object;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)J"
        }
    .end annotation

    .line 662
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getLong(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 666
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getLongValue(Ljava/util/Map;Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;J)J"
        }
    .end annotation

    .line 805
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getLong(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 809
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 344
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 345
    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 346
    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMap(Ljava/util/Map;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 569
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 187
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 189
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_0

    .line 190
    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 192
    :cond_0
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 194
    :try_start_0
    check-cast p0, Ljava/lang/String;

    .line 195
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNumber(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;",
            "Ljava/lang/Number;",
            ")",
            "Ljava/lang/Number;"
        }
    .end annotation

    .line 429
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static getObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;TV;>;TK;)TV;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 112
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getObject(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)TV;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 368
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static getShort(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Short;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)",
            "Ljava/lang/Short;"
        }
    .end annotation

    .line 237
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 241
    :cond_0
    instance-of p1, p0, Ljava/lang/Short;

    if-eqz p1, :cond_1

    .line 242
    check-cast p0, Ljava/lang/Short;

    return-object p0

    .line 244
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public static getShort(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Short;)Ljava/lang/Short;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;",
            "Ljava/lang/Short;",
            ")",
            "Ljava/lang/Short;"
        }
    .end annotation

    .line 469
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getShort(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static getShortValue(Ljava/util/Map;Ljava/lang/Object;)S
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)S"
        }
    .end annotation

    .line 626
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getShort(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 630
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0
.end method

.method public static getShortValue(Ljava/util/Map;Ljava/lang/Object;S)S
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;S)S"
        }
    .end annotation

    .line 765
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getShort(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    .line 769
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0
.end method

.method public static getString(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 129
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getString(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;*>;TK;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 389
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->getString(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static invertMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TV;TK;>;"
        }
    .end annotation

    .line 1067
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1068
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1069
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1213
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNotEmpty(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 1226
    invoke-static {p0}, Lorg/apache/commons/collections4/MapUtils;->isEmpty(Ljava/util/Map;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static iterableMap(Ljava/util/Map;)Lorg/apache/commons/collections4/IterableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/IterableMap<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1775
    instance-of v0, p0, Lorg/apache/commons/collections4/IterableMap;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/commons/collections4/IterableMap;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/MapUtils$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/MapUtils$1;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    :goto_0
    return-object p0

    .line 1773
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Map must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static iterableSortedMap(Ljava/util/SortedMap;)Lorg/apache/commons/collections4/IterableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/IterableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1792
    instance-of v0, p0, Lorg/apache/commons/collections4/IterableSortedMap;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/commons/collections4/IterableSortedMap;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/MapUtils$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/MapUtils$2;-><init>(Ljava/util/SortedMap;)V

    move-object p0, v0

    :goto_0
    return-object p0

    .line 1790
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const/4 v0, 0x0

    sget-object v0, Lorg/ejml/dense/row/decompose/EB/JlKLR;->KDjSAdeCG:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lazyMap(Ljava/util/Map;Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/IterableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "+TV;>;)",
            "Lorg/apache/commons/collections4/IterableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1372
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/map/LazyMap;->lazyMap(Ljava/util/Map;Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/map/LazyMap;

    move-result-object p0

    return-object p0
.end method

.method public static lazyMap(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/IterableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TV;>;)",
            "Lorg/apache/commons/collections4/IterableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1414
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/map/LazyMap;->lazyMap(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/map/LazyMap;

    move-result-object p0

    return-object p0
.end method

.method public static lazySortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Factory;)Ljava/util/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "+TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1638
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/map/LazySortedMap;->lazySortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/map/LazySortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static lazySortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;)Ljava/util/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1680
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/map/LazySortedMap;->lazySortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/map/LazySortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static multiValueMap(Ljava/util/Map;)Lorg/apache/commons/collections4/map/MultiValueMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;-",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Lorg/apache/commons/collections4/map/MultiValueMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1448
    invoke-static {p0}, Lorg/apache/commons/collections4/map/MultiValueMap;->multiValueMap(Ljava/util/Map;)Lorg/apache/commons/collections4/map/MultiValueMap;

    move-result-object p0

    return-object p0
.end method

.method public static multiValueMap(Ljava/util/Map;Ljava/lang/Class;)Lorg/apache/commons/collections4/map/MultiValueMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "TV;>;>(",
            "Ljava/util/Map<",
            "TK;TC;>;",
            "Ljava/lang/Class<",
            "TC;>;)",
            "Lorg/apache/commons/collections4/map/MultiValueMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1469
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap;->multiValueMap(Ljava/util/Map;Ljava/lang/Class;)Lorg/apache/commons/collections4/map/MultiValueMap;

    move-result-object p0

    return-object p0
.end method

.method public static multiValueMap(Ljava/util/Map;Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/map/MultiValueMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "TV;>;>(",
            "Ljava/util/Map<",
            "TK;TC;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "TC;>;)",
            "Lorg/apache/commons/collections4/map/MultiValueMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1490
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap;->multiValueMap(Ljava/util/Map;Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/map/MultiValueMap;

    move-result-object p0

    return-object p0
.end method

.method public static orderedMap(Ljava/util/Map;)Lorg/apache/commons/collections4/OrderedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/OrderedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1431
    invoke-static {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->listOrderedMap(Ljava/util/Map;)Lorg/apache/commons/collections4/map/ListOrderedMap;

    move-result-object p0

    return-object p0
.end method

.method public static populateMap(Ljava/util/Map;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/Iterable<",
            "+TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 1696
    invoke-static {}, Lorg/apache/commons/collections4/TransformerUtils;->nopTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/collections4/MapUtils;->populateMap(Ljava/util/Map;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    return-void
.end method

.method public static populateMap(Ljava/util/Map;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TE;TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TE;TV;>;)V"
        }
    .end annotation

    .line 1715
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1716
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1717
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1718
    invoke-interface {p2, v0}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v0}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static populateMap(Lorg/apache/commons/collections4/MultiMap;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/MultiMap<",
            "TK;TV;>;",
            "Ljava/lang/Iterable<",
            "+TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 1735
    invoke-static {}, Lorg/apache/commons/collections4/TransformerUtils;->nopTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/collections4/MapUtils;->populateMap(Lorg/apache/commons/collections4/MultiMap;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    return-void
.end method

.method public static populateMap(Lorg/apache/commons/collections4/MultiMap;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/MultiMap<",
            "TK;TV;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TE;TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TE;TV;>;)V"
        }
    .end annotation

    .line 1754
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1755
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1756
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1757
    invoke-interface {p2, v0}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v0}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lorg/apache/commons/collections4/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static predicatedMap(Ljava/util/Map;Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/IterableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TK;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TV;>;)",
            "Lorg/apache/commons/collections4/IterableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1293
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/map/PredicatedMap;->predicatedMap(Ljava/util/Map;Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/map/PredicatedMap;

    move-result-object p0

    return-object p0
.end method

.method public static predicatedSortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)Ljava/util/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TK;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1558
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->predicatedSortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/map/PredicatedSortedMap;

    move-result-object p0

    return-object p0
.end method

.method private static printIndent(Ljava/io/PrintStream;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "    "

    .line 1045
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static putAll(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    .line 1154
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    .line 1157
    aget-object v1, p1, v0

    .line 1158
    instance-of v2, v1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_1

    .line 1159
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_5

    aget-object v2, p1, v0

    .line 1161
    check-cast v2, Ljava/util/Map$Entry;

    .line 1162
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1164
    :cond_1
    instance-of v2, v1, Lorg/apache/commons/collections4/KeyValue;

    if-eqz v2, :cond_2

    .line 1165
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_5

    aget-object v2, p1, v0

    .line 1167
    check-cast v2, Lorg/apache/commons/collections4/KeyValue;

    .line 1168
    invoke-interface {v2}, Lorg/apache/commons/collections4/KeyValue;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/commons/collections4/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1170
    :cond_2
    instance-of v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    move v1, v0

    .line 1171
    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_5

    .line 1172
    aget-object v3, p1, v1

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 1173
    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    .line 1177
    aget-object v4, v3, v0

    aget-object v3, v3, v2

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1174
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid array element: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1180
    :cond_4
    :goto_3
    array-length v1, p1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    .line 1182
    aget-object v0, p1, v0

    add-int/lit8 v3, v1, 0x1

    aget-object v1, p1, v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_3

    :cond_5
    :goto_4
    return-object p0

    .line 1152
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The map must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static safeAddToMap(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;",
            "Ljava/lang/Object;",
            ">;TK;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p2, ""

    .line 1097
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static size(Ljava/util/Map;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1802
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1256
    invoke-static {p0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1521
    invoke-static {p0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static toMap(Ljava/util/ResourceBundle;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ResourceBundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 889
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 890
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 892
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 893
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 894
    invoke-virtual {p0, v2}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 895
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toProperties(Ljava/util/Map;)Ljava/util/Properties;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Properties;"
        }
    .end annotation

    .line 869
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    if-eqz p0, :cond_0

    .line 871
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 873
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 874
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 875
    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static transformedMap(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/IterableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TV;+TV;>;)",
            "Lorg/apache/commons/collections4/IterableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1322
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/map/TransformedMap;->transformingMap(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/map/TransformedMap;

    move-result-object p0

    return-object p0
.end method

.method public static transformedSortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Ljava/util/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TV;+TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1587
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/map/TransformedSortedMap;->transformingSortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/map/TransformedSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1271
    invoke-static {p0}, Lorg/apache/commons/collections4/map/UnmodifiableMap;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1536
    invoke-static {p0}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static verbosePrint(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 922
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/collections4/MapUtils;->verbosePrintInternal(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Deque;Z)V

    return-void
.end method

.method private static verbosePrintInternal(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Deque;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/util/Deque<",
            "Ljava/util/Map<",
            "**>;>;Z)V"
        }
    .end annotation

    .line 974
    invoke-interface {p3}, Ljava/util/Deque;->size()I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/commons/collections4/MapUtils;->printIndent(Ljava/io/PrintStream;I)V

    const-string v0, "null"

    const-string v1, " = "

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    .line 978
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 979
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 981
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 985
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 986
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 989
    :cond_2
    invoke-interface {p3}, Ljava/util/Deque;->size()I

    move-result p1

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->printIndent(Ljava/io/PrintStream;I)V

    const-string/jumbo p1, "{"

    .line 990
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 992
    invoke-interface {p3, p2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 994
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 995
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 996
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 997
    instance-of v4, v2, Ljava/util/Map;

    if-eqz v4, :cond_4

    invoke-interface {p3, v2}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v3, :cond_3

    move-object v3, v0

    .line 998
    :cond_3
    check-cast v2, Ljava/util/Map;

    invoke-static {p0, v3, v2, p3, p4}, Lorg/apache/commons/collections4/MapUtils;->verbosePrintInternal(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Deque;Z)V

    goto :goto_0

    .line 1005
    :cond_4
    invoke-interface {p3}, Ljava/util/Deque;->size()I

    move-result v4

    invoke-static {p0, v4}, Lorg/apache/commons/collections4/MapUtils;->printIndent(Ljava/io/PrintStream;I)V

    .line 1006
    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 1007
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1011
    invoke-static {v2}, Lorg/apache/commons/collections4/PredicateUtils;->equalPredicate(Ljava/lang/Object;)Lorg/apache/commons/collections4/Predicate;

    move-result-object v3

    .line 1010
    invoke-static {p3, v3}, Lorg/apache/commons/collections4/IterableUtils;->indexOf(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 1013
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    goto :goto_1

    .line 1014
    :cond_5
    invoke-interface {p3}, Ljava/util/Deque;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v4, v3, :cond_6

    const-string v3, "(this Map)"

    .line 1015
    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1017
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(ancestor["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1019
    invoke-interface {p3}, Ljava/util/Deque;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Map)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1017
    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    if-eqz p4, :cond_7

    if-eqz v2, :cond_7

    const/16 v3, 0x20

    .line 1024
    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(C)V

    .line 1025
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1027
    :cond_7
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    goto/16 :goto_0

    .line 1032
    :cond_8
    invoke-interface {p3}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 1034
    invoke-interface {p3}, Ljava/util/Deque;->size()I

    move-result p1

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/MapUtils;->printIndent(Ljava/io/PrintStream;I)V

    if-eqz p4, :cond_9

    .line 1035
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "} "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_9
    const-string/jumbo p1, "}"

    :goto_2
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
