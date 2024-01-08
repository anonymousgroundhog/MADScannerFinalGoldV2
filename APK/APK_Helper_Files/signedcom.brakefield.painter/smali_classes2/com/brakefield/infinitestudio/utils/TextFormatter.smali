.class public Lcom/brakefield/infinitestudio/utils/TextFormatter;
.super Ljava/lang/Object;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 76
    invoke-static {v0, v1}, Landroid/icu/text/DateFormat;->getDateTimeInstance(II)Landroid/icu/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x3c

    .line 18
    rem-long v2, p0, v0

    long-to-int v2, v2

    .line 19
    div-long v3, p0, v0

    rem-long/2addr v3, v0

    long-to-int v0, v3

    const-wide/16 v3, 0xe10

    .line 20
    div-long/2addr p0, v3

    long-to-int p0, p0

    if-lez p0, :cond_0

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%dh %dm %ds"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-lez v0, :cond_1

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%dm %ds"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 23
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%ds"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatScreenDistance(Landroid/content/res/Resources;J)Ljava/lang/String;
    .locals 7

    .line 48
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 51
    iget v1, p0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v5, p0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p0, v1

    long-to-float p1, p1

    div-float/2addr p1, p0

    const p0, 0x3cd013a9    # 0.0254f

    mul-float/2addr p0, p1

    .line 55
    sget-object p2, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v0, p2}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object p2

    .line 58
    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;->getFrom(Ljava/util/Locale;)Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;

    move-result-object v0

    sget-object v1, Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;->Imperial:Lcom/brakefield/infinitestudio/utils/TextFormatter$UnitLocale;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_2

    cmpg-float p1, p0, v2

    if-gez p1, :cond_0

    .line 60
    new-instance p1, Landroid/icu/util/Measure;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    sget-object v0, Landroid/icu/util/MeasureUnit;->CENTIMETER:Landroid/icu/util/MeasureUnit;

    invoke-direct {p1, p0, v0}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    goto :goto_1

    :cond_0
    const/high16 p1, 0x447a0000    # 1000.0f

    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    .line 61
    new-instance p1, Landroid/icu/util/Measure;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    sget-object v0, Landroid/icu/util/MeasureUnit;->METER:Landroid/icu/util/MeasureUnit;

    invoke-direct {p1, p0, v0}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    goto :goto_1

    .line 62
    :cond_1
    new-instance v0, Landroid/icu/util/Measure;

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    sget-object p1, Landroid/icu/util/MeasureUnit;->KILOMETER:Landroid/icu/util/MeasureUnit;

    invoke-direct {v0, p0, p1}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    goto :goto_0

    :cond_2
    const/high16 p0, 0x41400000    # 12.0f

    div-float p0, p1, p0

    cmpg-float v0, p0, v2

    if-gez v0, :cond_3

    .line 67
    new-instance p0, Landroid/icu/util/Measure;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    sget-object v0, Landroid/icu/util/MeasureUnit;->INCH:Landroid/icu/util/MeasureUnit;

    invoke-direct {p0, p1, v0}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    move-object p1, p0

    goto :goto_1

    :cond_3
    const/high16 p1, 0x45a50000    # 5280.0f

    cmpg-float v0, p0, p1

    if-gez v0, :cond_4

    .line 68
    new-instance p1, Landroid/icu/util/Measure;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    sget-object v0, Landroid/icu/util/MeasureUnit;->FOOT:Landroid/icu/util/MeasureUnit;

    invoke-direct {p1, p0, v0}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    goto :goto_1

    .line 69
    :cond_4
    new-instance v0, Landroid/icu/util/Measure;

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    sget-object p1, Landroid/icu/util/MeasureUnit;->MILE:Landroid/icu/util/MeasureUnit;

    invoke-direct {v0, p0, p1}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    :goto_0
    move-object p1, v0

    .line 72
    :goto_1
    invoke-virtual {p2, p1}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
