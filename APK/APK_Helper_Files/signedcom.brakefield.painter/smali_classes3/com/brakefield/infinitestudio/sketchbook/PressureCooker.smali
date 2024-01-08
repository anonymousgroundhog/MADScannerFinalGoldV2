.class public Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;
.super Ljava/lang/Object;
.source "PressureCooker.java"


# static fields
.field private static final DEF_PRESSURE_MAX:F = 1.0f

.field private static final DEF_PRESSURE_MIN:F = 0.0f

.field private static final PREF_FIRST_RUN:Ljava/lang/String; = "first_run"

.field private static final PREF_PRESSURE_MAX:Ljava/lang/String; = "pressure_max"

.field private static final PREF_PRESSURE_MIN:Ljava/lang/String; = "pressure_min"

.field private static final PREF_PRESSURE_RECENT_MAX:Ljava/lang/String; = "pressure_recent_max"

.field private static final PREF_PRESSURE_RECENT_MIN:Ljava/lang/String; = "pressure_recent_min"

.field public static final PRESSURE_UPDATE_DECAY:F = 0.1f

.field public static final PRESSURE_UPDATE_STEPS_FIRSTBOOT:I = 0x64

.field public static final PRESSURE_UPDATE_STEPS_NORMAL:I = 0x2710


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPressureCountdownStart:I

.field private mPressureMax:F

.field private mPressureMin:F

.field private mPressureRecentMax:F

.field private mPressureRecentMin:F

.field private mPressureUpdateCountdown:I

.field private root:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureMin:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 35
    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureMax:F

    const/16 v2, 0x2710

    .line 40
    iput v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureCountdownStart:I

    .line 41
    iput v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureUpdateCountdown:I

    .line 42
    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureRecentMin:F

    .line 43
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureRecentMax:F

    .line 49
    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mContext:Landroid/content/Context;

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->root:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->loadStats()V

    return-void
.end method

.method private clamp(FFF)F
    .locals 1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    move p1, p2

    :cond_0
    cmpl-float p2, p1, p3

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    move p3, p1

    :goto_0
    return p3
.end method


# virtual methods
.method public getAdjustedPressure(F)F
    .locals 6

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 99
    invoke-direct {p0, p1, v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->clamp(FFF)F

    move-result p1

    .line 101
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureRecentMin:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 102
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureRecentMin:F

    .line 103
    :cond_0
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureRecentMax:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 104
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureRecentMax:F

    .line 106
    :cond_1
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureUpdateCountdown:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureUpdateCountdown:I

    if-nez v2, :cond_3

    .line 108
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureMin:F

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureRecentMin:F

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureMin:F

    .line 109
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureMax:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureRecentMax:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureMax:F

    .line 111
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureCountdownStart:I

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_2

    int-to-float v2, v2

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 112
    iput v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureCountdownStart:I

    if-le v2, v3, :cond_2

    .line 114
    iput v3, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureCountdownStart:I

    .line 116
    :cond_2
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureCountdownStart:I

    iput v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureUpdateCountdown:I

    .line 118
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->saveStats()V

    .line 121
    :cond_3
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureRecentMax:F

    cmpl-float v3, v2, v0

    if-lez v3, :cond_4

    div-float v2, v1, v2

    mul-float/2addr p1, v2

    .line 125
    :cond_4
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureMin:F

    sub-float/2addr p1, v2

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureMax:F

    sub-float/2addr v3, v2

    div-float/2addr p1, v3

    .line 128
    invoke-direct {p0, p1, v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method public loadStats()V
    .locals 7

    .line 56
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->root:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pressure_min"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureMin:F

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->root:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "pressure_max"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureMax:F

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->root:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureRecentMin:F

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->root:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureRecentMax:F

    .line 64
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureMin:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 65
    iput v3, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureMin:F

    .line 67
    :cond_0
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureMax:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    .line 68
    iput v5, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureMax:F

    .line 71
    :cond_1
    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureRecentMin:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 72
    iput v3, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureRecentMin:F

    :cond_2
    cmpl-float v1, v1, v5

    if-lez v1, :cond_3

    .line 75
    iput v5, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureRecentMax:F

    .line 78
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->root:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "first_run"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->setFirstRun(Z)V

    return-void
.end method

.method public saveStats()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->root:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "first_run"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->root:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pressure_min"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureMin:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->root:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pressure_max"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureMax:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->root:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pressure_recent_min"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureRecentMin:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->root:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pressure_recent_max"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureRecentMax:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setFirstRun(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x64

    .line 135
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureCountdownStart:I

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->mPressureUpdateCountdown:I

    :cond_0
    return-void
.end method
