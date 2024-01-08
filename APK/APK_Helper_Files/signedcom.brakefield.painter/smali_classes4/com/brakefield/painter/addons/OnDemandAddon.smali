.class public abstract Lcom/brakefield/painter/addons/OnDemandAddon;
.super Lcom/brakefield/painter/addons/Addon;
.source "OnDemandAddon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/addons/OnDemandAddon$OnInstallListener;
    }
.end annotation


# instance fields
.field private final PREF_UNINSTALLED:Ljava/lang/String;

.field private splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

.field private uninstalled:Z

.field private updateListener:Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/brakefield/painter/addons/Addon;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/brakefield/painter/addons/OnDemandAddon;->getBasePreferenceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_UNINSTALLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/addons/OnDemandAddon;->PREF_UNINSTALLED:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/brakefield/painter/addons/OnDemandAddon;->uninstalled:Z

    return-void
.end method

.method static synthetic lambda$install$1(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Integer;)V
    .locals 0

    .line 106
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method static synthetic lambda$install$2(Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 1

    .line 108
    check-cast p1, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallException;->getErrorCode()I

    move-result p1

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f1209a9

    const/4 v0, 0x1

    .line 110
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private setUninstalled(Landroid/content/Context;Z)V
    .locals 1

    .line 126
    iput-boolean p2, p0, Lcom/brakefield/painter/addons/OnDemandAddon;->uninstalled:Z

    .line 127
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 128
    iget-object v0, p0, Lcom/brakefield/painter/addons/OnDemandAddon;->PREF_UNINSTALLED:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method protected getBasePreferenceName()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PREF_EXTERNAL_MODULE_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/brakefield/painter/addons/OnDemandAddon;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getModuleName()Ljava/lang/String;
.end method

.method public install(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/brakefield/painter/addons/OnDemandAddon;->install(Landroid/content/Context;Lcom/brakefield/painter/addons/OnDemandAddon$OnInstallListener;)V

    return-void
.end method

.method public install(Landroid/content/Context;Lcom/brakefield/painter/addons/OnDemandAddon$OnInstallListener;)V
    .locals 3

    .line 66
    iget-boolean v0, p0, Lcom/brakefield/painter/addons/OnDemandAddon;->uninstalled:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/brakefield/painter/addons/OnDemandAddon;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->getInstalledModules()Ljava/util/Set;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/brakefield/painter/addons/OnDemandAddon;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/brakefield/painter/addons/OnDemandAddon;->setUninstalled(Landroid/content/Context;Z)V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 70
    invoke-interface {p2, v0}, Lcom/brakefield/painter/addons/OnDemandAddon$OnInstallListener;->onCompleted(Z)V

    .line 74
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 76
    invoke-static {}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;->newBuilder()Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/brakefield/painter/addons/OnDemandAddon;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->addModule(Ljava/lang/String;)Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->build()Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    move-result-object v1

    .line 78
    new-instance v2, Lcom/brakefield/painter/addons/OnDemandAddon$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/brakefield/painter/addons/OnDemandAddon$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/addons/OnDemandAddon;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/brakefield/painter/addons/OnDemandAddon$OnInstallListener;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/brakefield/painter/addons/OnDemandAddon;->updateListener:Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

    .line 103
    iget-object p2, p0, Lcom/brakefield/painter/addons/OnDemandAddon;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {p2, v2}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->registerListener(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V

    .line 105
    iget-object p2, p0, Lcom/brakefield/painter/addons/OnDemandAddon;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {p2, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->startInstall(Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p2

    new-instance v1, Lcom/brakefield/painter/addons/OnDemandAddon$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/brakefield/painter/addons/OnDemandAddon$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 106
    invoke-virtual {p2, v1}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/brakefield/painter/addons/OnDemandAddon$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/addons/OnDemandAddon$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {p2, v0}, Lcom/google/android/play/core/tasks/Task;->addOnFailureListener(Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method public isInstalled(Landroid/content/Context;)Z
    .locals 1

    .line 54
    iget-boolean p1, p0, Lcom/brakefield/painter/addons/OnDemandAddon;->uninstalled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/addons/OnDemandAddon;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->getInstalledModules()Ljava/util/Set;

    move-result-object p1

    .line 56
    invoke-virtual {p0}, Lcom/brakefield/painter/addons/OnDemandAddon;->getModuleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$install$0$com-brakefield-painter-addons-OnDemandAddon(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/brakefield/painter/addons/OnDemandAddon$OnInstallListener;Landroid/content/Context;Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V
    .locals 3

    .line 79
    invoke-virtual {p4}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne v0, p1, :cond_6

    .line 80
    invoke-virtual {p4}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 p4, 0x4

    if-eq p1, p4, :cond_5

    const/4 p4, 0x5

    if-eq p1, p4, :cond_2

    const/4 p3, 0x6

    if-eq p1, p3, :cond_0

    const/4 p3, 0x7

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 92
    invoke-interface {p2, v1}, Lcom/brakefield/painter/addons/OnDemandAddon$OnInstallListener;->onCompleted(Z)V

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/addons/OnDemandAddon;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    iget-object p2, p0, Lcom/brakefield/painter/addons/OnDemandAddon;->updateListener:Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

    invoke-interface {p1, p2}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->unregisterListener(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V

    goto :goto_0

    .line 96
    :cond_2
    invoke-direct {p0, p3, v1}, Lcom/brakefield/painter/addons/OnDemandAddon;->setUninstalled(Landroid/content/Context;Z)V

    if-eqz p2, :cond_3

    .line 97
    invoke-interface {p2, v0}, Lcom/brakefield/painter/addons/OnDemandAddon$OnInstallListener;->onCompleted(Z)V

    .line 98
    :cond_3
    iget-object p1, p0, Lcom/brakefield/painter/addons/OnDemandAddon;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    iget-object p2, p0, Lcom/brakefield/painter/addons/OnDemandAddon;->updateListener:Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

    invoke-interface {p1, p2}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->unregisterListener(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V

    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual {p4}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->totalBytesToDownload()J

    move-result-wide v0

    long-to-int p1, v0

    .line 87
    invoke-virtual {p4}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded()J

    move-result-wide p3

    long-to-int p3, p3

    if-eqz p2, :cond_6

    .line 88
    invoke-interface {p2, p3, p1}, Lcom/brakefield/painter/addons/OnDemandAddon$OnInstallListener;->updateProgress(II)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    .line 83
    invoke-interface {p2, v1, v1}, Lcom/brakefield/painter/addons/OnDemandAddon$OnInstallListener;->updateProgress(II)V

    :cond_6
    :goto_0
    return-void
.end method

.method public setup(Landroid/content/Context;)V
    .locals 3

    .line 46
    invoke-static {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/addons/OnDemandAddon;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    .line 47
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/brakefield/painter/addons/OnDemandAddon;->PREF_UNINSTALLED:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/brakefield/painter/addons/OnDemandAddon;->uninstalled:Z

    .line 49
    invoke-super {p0, p1}, Lcom/brakefield/painter/addons/Addon;->setup(Landroid/content/Context;)V

    return-void
.end method

.method public uninstall(Landroid/content/Context;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/brakefield/painter/addons/OnDemandAddon;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-virtual {p0}, Lcom/brakefield/painter/addons/OnDemandAddon;->getModuleName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->deferredUninstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;

    const/4 v0, 0x1

    .line 122
    invoke-direct {p0, p1, v0}, Lcom/brakefield/painter/addons/OnDemandAddon;->setUninstalled(Landroid/content/Context;Z)V

    return-void
.end method
