.class public Lcom/brakefield/painter/PainterApplication;
.super Landroid/app/Application;
.source "PainterApplication.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/pairip/StartupLauncher;->launch()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 38
    invoke-static {p0}, Lcom/google/android/play/core/splitcompat/SplitCompat;->install(Landroid/content/Context;)Z

    return-void
.end method

.method public onCreate()V
    .locals 6

    .line 16
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 18
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.brakefield.painter"

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->init(Landroid/content/res/Resources;Ljava/lang/String;)V

    const-string v0, "Painter"

    .line 19
    invoke-static {p0, v0}, Lcom/brakefield/infinitestudio/FileManager;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->init(Landroid/content/Context;)V

    const-string v0, "activity"

    .line 22
    invoke-virtual {p0, v0}, Lcom/brakefield/painter/PainterApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 23
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 24
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 26
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    sub-long/2addr v2, v4

    .line 27
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 28
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setDeviceRAM(I)V

    long-to-float v0, v2

    const v1, 0x3f266666    # 0.65f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 29
    invoke-static {v0, v1}, Lcom/brakefield/painter/PainterLib;->setAvailableMemoryBytes(J)V

    return-void
.end method
