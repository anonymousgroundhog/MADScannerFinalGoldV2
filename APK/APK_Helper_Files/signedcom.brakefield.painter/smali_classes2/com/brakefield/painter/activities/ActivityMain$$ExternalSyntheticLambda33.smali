.class public final synthetic Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/activities/ActivityMain;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivityMain;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda33;->f$0:Lcom/brakefield/painter/activities/ActivityMain;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda33;->f$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-virtual {v0}, Lcom/brakefield/painter/activities/ActivityMain;->lambda$onCreate$2$com-brakefield-painter-activities-ActivityMain()Z

    move-result v0

    return v0
.end method
