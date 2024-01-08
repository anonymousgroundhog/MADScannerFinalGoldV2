.class public final synthetic Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/infinite/app/ViewSystem$View;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/activities/ActivityMain;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivityMain;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda41;->f$0:Lcom/brakefield/painter/activities/ActivityMain;

    return-void
.end method


# virtual methods
.method public final show(Landroid/content/Context;JI[I)V
    .locals 6

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$$ExternalSyntheticLambda41;->f$0:Lcom/brakefield/painter/activities/ActivityMain;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/activities/ActivityMain;->lambda$registerAppViews$24$com-brakefield-painter-activities-ActivityMain(Landroid/content/Context;JI[I)V

    return-void
.end method
