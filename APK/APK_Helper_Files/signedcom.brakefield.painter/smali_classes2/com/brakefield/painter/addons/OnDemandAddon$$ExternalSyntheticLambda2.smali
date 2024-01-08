.class public final synthetic Lcom/brakefield/painter/addons/OnDemandAddon$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/addons/OnDemandAddon$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/addons/OnDemandAddon$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/brakefield/painter/addons/OnDemandAddon;->lambda$install$2(Landroid/content/Context;Ljava/lang/Exception;)V

    return-void
.end method
