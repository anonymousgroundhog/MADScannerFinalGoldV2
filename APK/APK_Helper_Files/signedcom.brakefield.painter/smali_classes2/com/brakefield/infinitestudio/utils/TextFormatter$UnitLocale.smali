.class Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;
.super Ljava/lang/Object;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/utils/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnitLocale"
.end annotation


# static fields
.field public static Imperial:Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;

.field public static Metric:Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;->Imperial:Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;

    .line 32
    new-instance v0, Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;->Metric:Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;
    .locals 1

    .line 35
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;->getFrom(Ljava/util/Locale;)Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;

    move-result-object v0

    return-object v0
.end method

.method public static getFrom(Ljava/util/Locale;)Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;
    .locals 1

    .line 38
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const-string v0, "US"

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;->Imperial:Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;

    return-object p0

    :cond_0
    const-string v0, "LR"

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;->Imperial:Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;

    return-object p0

    :cond_1
    const-string v0, "MM"

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;->Imperial:Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;

    return-object p0

    .line 42
    :cond_2
    sget-object p0, Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;->Metric:Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;

    return-object p0
.end method
