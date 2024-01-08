.class public Lcom/brakefield/infinitestudio/AppLocales;
.super Ljava/lang/Object;
.source "AppLocales.java"


# static fields
.field private static final locales:[Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 9
    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    sget-object v2, Lcom/google/android/gms/common/util/jw/utcqmHsaH;->eUTTEOLbBYkMcEq:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/Locale;

    const-string v2, "es"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/Locale;

    const-string v2, "fr"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/Locale;

    const-string v2, "in"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/Locale;

    const-string v2, "it"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/Locale;

    const-string v2, "ja"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/Locale;

    const-string v2, "ko"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    sget-object v2, Lkotlin/sequences/xWeI/PLNIgvxmKA;->djUvwSERZpNnq:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/Locale;

    const-string v2, "pl"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/Locale;

    const-string v2, "pt"

    const-string v4, "BR"

    invoke-direct {v1, v2, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/Locale;

    const-string v2, "ru"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/Locale;

    const-string v2, "CN"

    const-string/jumbo v3, "zh"

    invoke-direct {v1, v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/Locale;

    const-string v2, "TW"

    invoke-direct {v1, v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/brakefield/infinitestudio/AppLocales;->locales:[Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static at(I)Ljava/util/Locale;
    .locals 1

    .line 30
    sget-object v0, Lcom/brakefield/infinitestudio/AppLocales;->locales:[Ljava/util/Locale;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static find(Ljava/util/Locale;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 34
    :goto_0
    sget-object v2, Lcom/brakefield/infinitestudio/AppLocales;->locales:[Ljava/util/Locale;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 35
    aget-object v2, v2, v1

    .line 36
    invoke-virtual {p0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static size()I
    .locals 1

    .line 27
    sget-object v0, Lcom/brakefield/infinitestudio/AppLocales;->locales:[Ljava/util/Locale;

    array-length v0, v0

    return v0
.end method
