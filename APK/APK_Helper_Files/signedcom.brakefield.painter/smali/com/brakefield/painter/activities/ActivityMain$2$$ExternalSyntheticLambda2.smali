.class public final synthetic Lcom/brakefield/painter/activities/ActivityMain$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/activities/ActivityMain$2;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivityMain$2;ZLandroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain$2$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/activities/ActivityMain$2;

    iput-boolean p2, p0, Lcom/brakefield/painter/activities/ActivityMain$2$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Lcom/brakefield/painter/activities/ActivityMain$2$$ExternalSyntheticLambda2;->f$2:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 6

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$2$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/activities/ActivityMain$2;

    iget-boolean v1, p0, Lcom/brakefield/painter/activities/ActivityMain$2$$ExternalSyntheticLambda2;->f$1:Z

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain$2$$ExternalSyntheticLambda2;->f$2:Landroid/view/ViewGroup;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/activities/ActivityMain$2;->lambda$onPreDraw$2$com-brakefield-painter-activities-ActivityMain$2(ZLandroid/view/ViewGroup;Landroid/view/View;ILandroid/view/ViewGroup;)V

    return-void
.end method
