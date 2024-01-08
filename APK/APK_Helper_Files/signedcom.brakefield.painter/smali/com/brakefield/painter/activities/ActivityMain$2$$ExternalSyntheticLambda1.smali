.class public final synthetic Lcom/brakefield/painter/activities/ActivityMain$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/activities/ActivityMain$2;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivityMain$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain$2$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/activities/ActivityMain$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$2$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/activities/ActivityMain$2;

    invoke-virtual {v0}, Lcom/brakefield/painter/activities/ActivityMain$2;->lambda$onPreDraw$1$com-brakefield-painter-activities-ActivityMain$2()V

    return-void
.end method
