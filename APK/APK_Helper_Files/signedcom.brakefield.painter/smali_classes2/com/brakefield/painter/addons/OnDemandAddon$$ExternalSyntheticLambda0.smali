.class public final synthetic Lcom/brakefield/painter/addons/OnDemandAddon$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/addons/OnDemandAddon;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$2:Lcom/brakefield/painter/addons/OnDemandAddon$OnInstallListener;

.field public final synthetic f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/addons/OnDemandAddon;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/brakefield/painter/addons/OnDemandAddon$OnInstallListener;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/addons/OnDemandAddon$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/addons/OnDemandAddon;

    iput-object p2, p0, Lcom/brakefield/painter/addons/OnDemandAddon$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/brakefield/painter/addons/OnDemandAddon$$ExternalSyntheticLambda0;->f$2:Lcom/brakefield/painter/addons/OnDemandAddon$OnInstallListener;

    iput-object p4, p0, Lcom/brakefield/painter/addons/OnDemandAddon$$ExternalSyntheticLambda0;->f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onStateUpdate(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/brakefield/painter/addons/OnDemandAddon$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/addons/OnDemandAddon;

    iget-object v1, p0, Lcom/brakefield/painter/addons/OnDemandAddon$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/brakefield/painter/addons/OnDemandAddon$$ExternalSyntheticLambda0;->f$2:Lcom/brakefield/painter/addons/OnDemandAddon$OnInstallListener;

    iget-object v3, p0, Lcom/brakefield/painter/addons/OnDemandAddon$$ExternalSyntheticLambda0;->f$3:Landroid/content/Context;

    check-cast p1, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/brakefield/painter/addons/OnDemandAddon;->lambda$install$0$com-brakefield-painter-addons-OnDemandAddon(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/brakefield/painter/addons/OnDemandAddon$OnInstallListener;Landroid/content/Context;Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    return-void
.end method
