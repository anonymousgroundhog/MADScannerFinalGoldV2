.class public final synthetic Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/activities/ActivityMain;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivityMain;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/activities/ActivityMain;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/activities/ActivityMain;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/activities/ActivityMain;->lambda$new$0$com-brakefield-painter-activities-ActivityMain(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
