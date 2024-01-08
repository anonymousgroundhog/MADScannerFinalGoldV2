.class public final synthetic Lcom/brakefield/painter/activities/ResourcesActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/activities/ResourcesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/activities/ResourcesActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/activities/ResourcesActivity$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/activities/ResourcesActivity;

    return-void
.end method


# virtual methods
.method public final resourceSelected(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/activities/ResourcesActivity$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/activities/ResourcesActivity;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/activities/ResourcesActivity;->lambda$getCollectionViewControllerDelegate$4$com-brakefield-painter-activities-ResourcesActivity(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V

    return-void
.end method
